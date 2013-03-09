.class public Lcom/htc/android/mail/Headers;
.super Ljava/lang/Object;
.source "Headers.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/android/mail/Headers$Rfc2047;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DEBUG:Z = false

.field public static final SUBJECT_TYPE_FORWARD:I = 0x2

.field public static final SUBJECT_TYPE_NONE:I = 0x0

.field public static final SUBJECT_TYPE_REPLY:I = 0x1

.field private static final TAG:Ljava/lang/String; = "Headers"

.field static final mailaddress:Ljava/util/regex/Pattern;

.field public static final sFromP:Ljava/util/regex/Pattern;

.field public static final sFromP2:Ljava/util/regex/Pattern;

.field public static final sFromP3:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-string v0, "^(.*)<(.*)>.*$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/htc/android/mail/Headers;->sFromP:Ljava/util/regex/Pattern;

    .line 19
    const-string v0, "^<(.*)@(.*)>$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/htc/android/mail/Headers;->sFromP2:Ljava/util/regex/Pattern;

    .line 20
    const-string v0, "(.*)<(.*)@(.*)>(.*)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/htc/android/mail/Headers;->sFromP3:Ljava/util/regex/Pattern;

    .line 26
    sget-boolean v0, Lcom/htc/android/mail/Mail;->MAIL_DEBUG:Z

    sput-boolean v0, Lcom/htc/android/mail/Headers;->DEBUG:Z

    .line 330
    const-string v0, "(.*)@(.*)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/htc/android/mail/Headers;->mailaddress:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 704
    return-void
.end method

.method private static AddMailaddress(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "result"
    .parameter "str1"

    .prologue
    .line 306
    const/4 v2, 0x0

    .line 307
    .local v2, subpos:I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 308
    const-string v3, ", "

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 309
    if-gez v2, :cond_1

    .line 310
    const-string v3, "; "

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 311
    if-gez v2, :cond_1

    .line 326
    :cond_0
    return-object p1

    .line 314
    :cond_1
    const/4 v3, 0x0

    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 316
    .local v1, subStr:Ljava/lang/String;
    sget-object v3, Lcom/htc/android/mail/Headers;->mailaddress:Ljava/util/regex/Pattern;

    invoke-virtual {v3, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 317
    .local v0, n:Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 319
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/htc/android/mail/Headers$Rfc2047;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 320
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 324
    goto :goto_0
.end method

.method private static AddMatchNameAndMailaddress(Ljava/lang/StringBuilder;Ljava/util/regex/Matcher;)V
    .locals 7
    .parameter "result"
    .parameter "m"

    .prologue
    const/16 v6, 0x22

    const/4 v5, 0x1

    const/4 v4, 0x2

    .line 333
    const/4 v0, 0x0

    .local v0, str1:Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, str2:Ljava/lang/String;
    const/4 v2, 0x0

    .line 337
    .local v2, str3:Ljava/lang/String;
    invoke-virtual {p1, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    .line 339
    invoke-static {p0, v0}, Lcom/htc/android/mail/Headers;->AddMailaddress(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 341
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 360
    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v3, v4, :cond_1

    .line 361
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 362
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v6, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v6, :cond_1

    .line 363
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-gt v3, v4, :cond_0

    .line 364
    const/4 v0, 0x0

    goto :goto_0

    .line 366
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 374
    :cond_1
    invoke-virtual {p1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    .line 375
    const/4 v3, 0x3

    invoke-virtual {p1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    .line 376
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_2

    .line 377
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 378
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "@"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ">, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 382
    :goto_1
    return-void

    .line 380
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "@"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method public static AddressArrayToString(Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/android/mail/Mailaddress;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 597
    .local p0, mAddress:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/Mailaddress;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 601
    .local v2, mToString:Ljava/lang/StringBuilder;
    if-nez p0, :cond_0

    .line 602
    const-string v3, ""

    .line 622
    :goto_0
    return-object v3

    .line 603
    :cond_0
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_5

    .line 604
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/android/mail/Mailaddress;

    iget-object v3, v3, Lcom/htc/android/mail/Mailaddress;->mDisplayName:Ljava/lang/String;

    if-eqz v3, :cond_1

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/android/mail/Mailaddress;

    iget-object v3, v3, Lcom/htc/android/mail/Mailaddress;->mDisplayName:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 605
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_2

    .line 606
    const-string v3, "<"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/android/mail/Mailaddress;

    iget-object v3, v3, Lcom/htc/android/mail/Mailaddress;->mEmail:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ">"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 603
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 608
    :cond_2
    const-string v3, ", <"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/android/mail/Mailaddress;

    iget-object v3, v3, Lcom/htc/android/mail/Mailaddress;->mEmail:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ">"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 611
    :cond_3
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/android/mail/Mailaddress;

    iget-object v3, v3, Lcom/htc/android/mail/Mailaddress;->mDisplayName:Ljava/lang/String;

    invoke-static {v3}, Lcom/htc/android/mail/Mailaddress;->escapeQuoter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 612
    .local v0, displayName:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_4

    .line 613
    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\" <"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/android/mail/Mailaddress;

    iget-object v3, v3, Lcom/htc/android/mail/Mailaddress;->mEmail:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ">"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 615
    :cond_4
    const-string v3, ", \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\" <"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/android/mail/Mailaddress;

    iget-object v3, v3, Lcom/htc/android/mail/Mailaddress;->mEmail:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ">"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 622
    .end local v0           #displayName:Ljava/lang/String;
    :cond_5
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0
.end method

.method public static final ParseMailAddress(Ljava/lang/String;)Ljava/lang/String;
    .locals 17
    .parameter "header"

    .prologue
    .line 437
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 438
    .local v8, result:Ljava/lang/StringBuilder;
    const/4 v10, 0x0

    .local v10, str1:Ljava/lang/String;
    const/4 v11, 0x0

    .local v11, str2:Ljava/lang/String;
    const/4 v12, 0x0

    .line 439
    .local v12, str3:Ljava/lang/String;
    const/4 v7, 0x0

    .local v7, prepos:I
    const/4 v5, 0x0

    .line 444
    .local v5, pos:I
    const/4 v9, -0x1

    .local v9, start_pos:I
    const/4 v3, -0x1

    .line 446
    .local v3, end_pos:I
    :goto_0
    invoke-static {}, Lcom/htc/android/mail/Regex;->getInstance()Lcom/htc/android/mail/Regex;

    move-result-object v14

    const/4 v15, 0x4

    invoke-virtual {v14, v15}, Lcom/htc/android/mail/Regex;->getPattern(I)Ljava/util/regex/Pattern;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 447
    .local v4, m:Ljava/util/regex/Matcher;
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v14

    if-eqz v14, :cond_0

    .line 448
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/htc/android/mail/Headers$Rfc2047;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 449
    .local v13, tmp:Ljava/lang/String;
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v13}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 450
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->start()I

    move-result v14

    if-eq v14, v9, :cond_0

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->end()I

    move-result v14

    if-ne v14, v3, :cond_9

    .line 467
    .end local v13           #tmp:Ljava/lang/String;
    :cond_0
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v14

    if-lez v14, :cond_8

    .line 469
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 471
    const/16 v14, 0x9

    const/16 v15, 0x20

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    .line 472
    const/16 v14, 0xd

    const/16 v15, 0x20

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    .line 475
    const/4 v6, 0x0

    .line 478
    .local v6, preHeader_length:I
    :cond_1
    const/4 v1, 0x0

    .line 479
    .local v1, Charoffset:I
    const/4 v2, 0x0

    .line 483
    .local v2, Split:I
    const-string v14, "; "

    if-lez v5, :cond_a

    .end local v5           #pos:I
    :goto_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v5

    .line 484
    .restart local v5       #pos:I
    const/4 v14, -0x1

    if-ne v5, v14, :cond_2

    .line 486
    const-string v14, ">,"

    if-lez v5, :cond_b

    .end local v5           #pos:I
    :goto_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v5

    .line 489
    .restart local v5       #pos:I
    :cond_2
    const/4 v14, -0x1

    if-ne v5, v14, :cond_3

    .line 490
    const-string v14, "> "

    if-lez v5, :cond_c

    .end local v5           #pos:I
    :goto_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v5

    .line 496
    .restart local v5       #pos:I
    :cond_3
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v14

    if-ne v6, v14, :cond_5

    .line 497
    sget-boolean v14, Lcom/htc/android/mail/Headers;->DEBUG:Z

    if-eqz v14, :cond_4

    .line 498
    const-string v14, "Headers"

    const-string v15, "Can\'t get more correct recipients"

    invoke-static {v14, v15}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 499
    :cond_4
    const/4 v5, -0x1

    .line 502
    :cond_5
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v6

    .line 505
    const/4 v14, -0x1

    if-ne v5, v14, :cond_d

    .line 508
    move-object/from16 v0, p0

    invoke-static {v8, v0, v5}, Lcom/htc/android/mail/Headers;->ParseNameAndMailaddress(Ljava/lang/StringBuilder;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    .line 509
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v14

    if-lez v14, :cond_6

    .line 510
    move-object/from16 v0, p0

    invoke-static {v8, v0}, Lcom/htc/android/mail/Headers;->AddMailaddress(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 522
    :cond_6
    :goto_4
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v14

    if-lez v14, :cond_7

    .line 523
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 525
    :cond_7
    const-string v14, "HeaderParser"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Result = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 529
    .end local v1           #Charoffset:I
    .end local v2           #Split:I
    .end local v6           #preHeader_length:I
    :cond_8
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    return-object v14

    .line 453
    .restart local v13       #tmp:Ljava/lang/String;
    :cond_9
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->start()I

    move-result v9

    .line 454
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->end()I

    move-result v3

    .line 458
    goto/16 :goto_0

    .line 483
    .end local v13           #tmp:Ljava/lang/String;
    .restart local v1       #Charoffset:I
    .restart local v2       #Split:I
    .restart local v6       #preHeader_length:I
    :cond_a
    const/4 v5, 0x0

    goto/16 :goto_1

    .line 486
    :cond_b
    const/4 v5, 0x0

    goto :goto_2

    .line 490
    :cond_c
    const/4 v5, 0x0

    goto :goto_3

    .line 514
    :cond_d
    move-object/from16 v0, p0

    invoke-static {v8, v0, v5}, Lcom/htc/android/mail/Headers;->ParseNameAndMailaddress(Ljava/lang/StringBuilder;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    .line 518
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v14

    if-gtz v14, :cond_1

    goto :goto_4
.end method

.method private static ParseNameAndMailaddress(Ljava/lang/StringBuilder;Ljava/lang/String;I)Ljava/lang/String;
    .locals 8
    .parameter "result"
    .parameter "header"
    .parameter "pos"

    .prologue
    const/16 v7, 0x3b

    const/16 v6, 0x2c

    const/16 v5, 0x20

    .line 386
    const/4 v0, 0x0

    .line 389
    .local v0, locate:I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-gt p2, v3, :cond_0

    .line 390
    const/16 v3, 0x3e

    add-int/lit8 v4, v0, 0x1

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->indexOf(II)I

    move-result p2

    .line 391
    if-gez p2, :cond_1

    .line 432
    :cond_0
    return-object p1

    .line 394
    :cond_1
    const/16 v3, 0x3c

    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .line 395
    if-le p2, v0, :cond_8

    .line 399
    const/4 v3, 0x0

    add-int/lit8 v4, p2, 0x1

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 401
    .local v2, substr:Ljava/lang/String;
    sget-object v3, Lcom/htc/android/mail/Headers;->sFromP3:Ljava/util/regex/Pattern;

    invoke-virtual {v3, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 402
    .local v1, m:Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 405
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, p2, :cond_3

    invoke-virtual {p1, v6, p2}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    add-int/lit8 v4, p2, 0x1

    if-eq v3, v4, :cond_2

    invoke-virtual {p1, v7, p2}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    add-int/lit8 v4, p2, 0x1

    if-eq v3, v4, :cond_2

    invoke-virtual {p1, v5, p2}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    add-int/lit8 v4, p2, 0x1

    if-ne v3, v4, :cond_3

    .line 406
    :cond_2
    add-int/lit8 v3, p2, 0x2

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 409
    :goto_1
    const/4 p2, 0x0

    .line 410
    const/4 v0, 0x0

    .line 411
    invoke-static {p0, v1}, Lcom/htc/android/mail/Headers;->AddMatchNameAndMailaddress(Ljava/lang/StringBuilder;Ljava/util/regex/Matcher;)V

    goto :goto_0

    .line 408
    :cond_3
    add-int/lit8 v3, p2, 0x1

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 414
    :cond_4
    sget-object v3, Lcom/htc/android/mail/Headers;->sFromP:Ljava/util/regex/Pattern;

    invoke-virtual {v3, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 415
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 416
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, p2, :cond_6

    invoke-virtual {p1, v6, p2}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    add-int/lit8 v4, p2, 0x1

    if-eq v3, v4, :cond_5

    invoke-virtual {p1, v7, p2}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    add-int/lit8 v4, p2, 0x1

    if-eq v3, v4, :cond_5

    invoke-virtual {p1, v5, p2}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    add-int/lit8 v4, p2, 0x1

    if-ne v3, v4, :cond_6

    .line 417
    :cond_5
    add-int/lit8 v3, p2, 0x2

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 421
    :goto_2
    const/4 p2, 0x0

    .line 422
    const/4 v0, 0x0

    .line 423
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 419
    :cond_6
    add-int/lit8 v3, p2, 0x1

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    .line 425
    :cond_7
    move v0, p2

    goto/16 :goto_0

    .line 429
    .end local v1           #m:Ljava/util/regex/Matcher;
    .end local v2           #substr:Ljava/lang/String;
    :cond_8
    move v0, p2

    goto/16 :goto_0
.end method

.method public static final extract(Ljava/util/ArrayList;IILjava/util/HashMap;)V
    .locals 9
    .parameter
    .parameter "start"
    .parameter "headerBreak"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/android/mail/ByteString;",
            ">;II",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p0, lines:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/ByteString;>;"
    .local p3, store:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v8, 0x2

    .line 35
    move v0, p1

    .local v0, i:I
    :goto_0
    if-ge v0, p2, :cond_6

    .line 36
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/android/mail/ByteString;

    .line 42
    .local v2, line:Lcom/htc/android/mail/ByteString;
    const-string v5, "ISO8859-1"

    invoke-virtual {v2, v5}, Lcom/htc/android/mail/ByteString;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6, v8}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v3

    .line 43
    .local v3, str:[Ljava/lang/String;
    array-length v5, v3

    if-ge v5, v8, :cond_1

    .line 35
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 46
    :cond_1
    const/4 v5, 0x0

    aget-object v5, v3, v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 47
    .local v1, key:Ljava/lang/String;
    const/4 v5, 0x1

    aget-object v5, v3, v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 58
    .local v4, value:Ljava/lang/String;
    sget-boolean v5, Lcom/htc/android/mail/Mail;->MAIL_DETAIL_DEBUG:Z

    if-eqz v5, :cond_2

    .line 59
    const-string v5, "Headers"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "check value:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    :cond_2
    const-string v5, "received"

    invoke-virtual {p3, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    const-string v5, "Received"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 61
    :cond_3
    sget-boolean v5, Lcom/htc/android/mail/Mail;->MAIL_DETAIL_DEBUG:Z

    if-eqz v5, :cond_4

    .line 62
    const-string v5, "Headers"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "key="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",value="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    :cond_4
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p3, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 65
    :cond_5
    sget-boolean v5, Lcom/htc/android/mail/Mail;->MAIL_DETAIL_DEBUG:Z

    if-eqz v5, :cond_0

    .line 66
    const-string v5, "Headers"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "none save key="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",value="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 77
    .end local v1           #key:Ljava/lang/String;
    .end local v2           #line:Lcom/htc/android/mail/ByteString;
    .end local v3           #str:[Ljava/lang/String;
    .end local v4           #value:Ljava/lang/String;
    :cond_6
    invoke-static {p3}, Lcom/htc/android/mail/Headers;->process(Ljava/util/HashMap;)V

    .line 78
    return-void
.end method

.method public static final extract(Ljava/util/ArrayList;ILjava/util/HashMap;)V
    .locals 1
    .parameter
    .parameter "headerBreak"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/android/mail/ByteString;",
            ">;I",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 29
    .local p0, lines:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/ByteString;>;"
    .local p2, store:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x0

    invoke-static {p0, v0, p1, p2}, Lcom/htc/android/mail/Headers;->extract(Ljava/util/ArrayList;IILjava/util/HashMap;)V

    .line 30
    return-void
.end method

.method static final getAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .parameter "header"
    .parameter "attribute"
    .parameter "defaultValue"

    .prologue
    const/16 v11, 0x22

    const/4 v10, -0x1

    .line 194
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 196
    .local v0, attrLen:I
    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v8}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    .line 198
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    .line 200
    .local v6, tag:I
    if-ne v6, v10, :cond_1

    .line 240
    .end local p2
    :cond_0
    :goto_0
    return-object p2

    .line 204
    .restart local p2
    :cond_1
    const-string v8, ";"

    add-int v9, v6, v0

    invoke-virtual {p0, v8, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .line 206
    .local v1, end:I
    if-ne v1, v10, :cond_2

    .line 207
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 210
    :cond_2
    const-string v8, "="

    add-int v9, v6, v0

    invoke-virtual {p0, v8, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    .line 212
    .local v2, equal:I
    if-eq v2, v10, :cond_0

    .line 217
    add-int/lit8 v8, v2, 0x1

    invoke-virtual {p0, v8, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 220
    .local v7, value:Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 222
    const/4 v5, 0x0

    .line 223
    .local v5, newStart:I
    const/4 v3, 0x0

    .line 226
    .local v3, hasQuotes:Z
    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-ne v8, v11, :cond_3

    .line 227
    const/4 v3, 0x1

    .line 228
    const/4 v5, 0x1

    .line 231
    :cond_3
    if-eqz v3, :cond_4

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v7, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-ne v8, v11, :cond_4

    .line 232
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v4, v8, -0x1

    .line 234
    .local v4, newEnd:I
    invoke-virtual {v7, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 237
    .end local v4           #newEnd:I
    :cond_4
    const-string v8, ""

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    move-object p2, v7

    .line 240
    goto :goto_0
.end method

.method static final getAttributeCaseSens(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 13
    .parameter "header"
    .parameter "attribute"
    .parameter "defaultValue"

    .prologue
    const/16 v12, 0x22

    const/4 v11, -0x1

    .line 245
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 246
    .local v0, attrLen:I
    move-object v6, p0

    .line 248
    .local v6, org:Ljava/lang/String;
    sget-object v9, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v9}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    .line 250
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    .line 252
    .local v7, tag:I
    if-ne v7, v11, :cond_1

    .line 289
    .end local p2
    :cond_0
    :goto_0
    return-object p2

    .line 256
    .restart local p2
    :cond_1
    const-string v9, ";"

    add-int v10, v7, v0

    invoke-virtual {p0, v9, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .line 258
    .local v1, end:I
    if-ne v1, v11, :cond_2

    .line 259
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 262
    :cond_2
    const-string v9, "="

    add-int v10, v7, v0

    invoke-virtual {p0, v9, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    .line 264
    .local v2, equal:I
    if-eq v2, v11, :cond_0

    .line 269
    add-int/lit8 v9, v2, 0x1

    invoke-virtual {v6, v9, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 272
    .local v8, value:Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    .line 274
    const/4 v5, 0x0

    .line 275
    .local v5, newStart:I
    const/4 v3, 0x0

    .line 278
    .local v3, hasQuotes:Z
    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-ne v9, v12, :cond_3

    .line 279
    const/4 v3, 0x1

    .line 280
    const/4 v5, 0x1

    .line 283
    :cond_3
    if-eqz v3, :cond_4

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v8, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-ne v9, v12, :cond_4

    .line 284
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v4, v9, -0x1

    .line 286
    .local v4, newEnd:I
    invoke-virtual {v8, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .end local v4           #newEnd:I
    :cond_4
    move-object p2, v8

    .line 289
    goto :goto_0
.end method

.method static final getBase(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "header"

    .prologue
    .line 293
    const-string v1, ";"

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 295
    .local v0, semicolon:I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 296
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 299
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static getCharsetFromHeader(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "subject"

    .prologue
    .line 626
    invoke-static {}, Lcom/htc/android/mail/Regex;->getInstance()Lcom/htc/android/mail/Regex;

    move-result-object v3

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lcom/htc/android/mail/Regex;->getPattern(I)Ljava/util/regex/Pattern;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 627
    .local v2, m:Ljava/util/regex/Matcher;
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/regex/Matcher;->find(I)Z

    move-result v1

    .line 628
    .local v1, found:Z
    if-eqz v1, :cond_0

    .line 629
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    .line 632
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static final getReceivedAttribute(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "header"

    .prologue
    const/4 v3, 0x0

    .line 174
    if-nez p0, :cond_1

    move-object v0, v3

    .line 190
    :cond_0
    :goto_0
    return-object v0

    .line 177
    :cond_1
    sget-boolean v4, Lcom/htc/android/mail/Headers;->DEBUG:Z

    if-eqz v4, :cond_2

    .line 178
    const-string v4, "Headers"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "****** POP receive date:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    :cond_2
    const-string v4, ";"

    invoke-virtual {p0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 180
    .local v2, strarray:[Ljava/lang/String;
    const-string v0, ""

    .line 181
    .local v0, dateString:Ljava/lang/String;
    if-eqz v2, :cond_3

    array-length v4, v2

    const/4 v5, 0x1

    if-le v4, v5, :cond_3

    .line 182
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    aget-object v3, v2, v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 186
    invoke-static {v0}, Lcom/htc/android/mail/DateParser;->parse(Ljava/lang/String;)Ljava/util/Calendar;

    move-result-object v1

    .line 187
    .local v1, mDate:Ljava/util/Calendar;
    sget-boolean v3, Lcom/htc/android/mail/Headers;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 188
    const-string v3, "Headers"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "****** POP receive date:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .end local v1           #mDate:Ljava/util/Calendar;
    :cond_3
    move-object v0, v3

    .line 184
    goto :goto_0
.end method

.method public static parseFromAddress(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;
    .locals 11
    .parameter "addr"
    .parameter "charset"
    .parameter "orgCharset"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
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
    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v8, 0x2

    .line 637
    if-eqz p0, :cond_8

    .line 638
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 639
    .local v0, addrMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v5, Lcom/htc/android/mail/Headers;->sFromP:Ljava/util/regex/Pattern;

    invoke-virtual {v5, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 640
    .local v3, m:Ljava/util/regex/Matcher;
    const/4 v2, 0x0

    .line 641
    .local v2, header_fromName:Ljava/lang/String;
    const/4 v1, 0x0

    .line 643
    .local v1, header_fromEmail:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 645
    invoke-virtual {v3, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, p1, p2}, Lcom/htc/android/mail/Headers$Rfc2047;->decode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 646
    invoke-virtual {v3, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/htc/android/mail/Headers$Rfc2047;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 648
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_0

    .line 649
    const-string v5, "@"

    invoke-virtual {v1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    aget-object v2, v5, v9

    .line 653
    :goto_0
    const-string v5, "from"

    invoke-virtual {v0, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 654
    const-string v5, "fromEmail"

    invoke-virtual {v3, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/htc/android/mail/Headers$Rfc2047;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 700
    .end local v0           #addrMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v1           #header_fromEmail:Ljava/lang/String;
    .end local v2           #header_fromName:Ljava/lang/String;
    .end local v3           #m:Ljava/util/regex/Matcher;
    :goto_1
    return-object v0

    .line 651
    .restart local v0       #addrMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v1       #header_fromEmail:Ljava/lang/String;
    .restart local v2       #header_fromName:Ljava/lang/String;
    .restart local v3       #m:Ljava/util/regex/Matcher;
    :cond_0
    const-string v5, "\""

    const-string v6, ""

    invoke-virtual {v2, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 658
    :cond_1
    invoke-static {p0}, Lcom/htc/android/mail/Headers$Rfc2047;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 659
    sget-boolean v5, Lcom/htc/android/mail/Mail;->MAIL_DETAIL_DEBUG:Z

    if-eqz v5, :cond_2

    .line 660
    const-string v5, "Headers"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "from:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 661
    :cond_2
    sget-object v5, Lcom/htc/android/mail/Headers;->sFromP:Ljava/util/regex/Pattern;

    invoke-virtual {v5, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 662
    .local v4, m2:Ljava/util/regex/Matcher;
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 663
    invoke-virtual {v4, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "\""

    const-string v7, ""

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 664
    invoke-virtual {v4, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    .line 665
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_3

    .line 666
    const-string v5, "@"

    invoke-virtual {v1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    aget-object v2, v5, v9

    .line 695
    :goto_2
    const-string v5, "from"

    invoke-virtual {v0, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 696
    const-string v5, "fromEmail"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 668
    :cond_3
    const-string v5, "\""

    const-string v6, ""

    invoke-virtual {v2, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    .line 670
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_5

    .line 671
    const-string v2, "none"

    .line 672
    const-string v1, "none"

    goto :goto_2

    .line 673
    :cond_5
    const-string v5, "<"

    invoke-virtual {p0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 676
    const/4 v2, 0x0

    .line 677
    const-string v5, "<"

    const-string v6, ""

    invoke-virtual {p0, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    const-string v6, ">"

    const-string v7, ""

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 685
    :cond_6
    const-string v5, "@"

    invoke-virtual {p0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 687
    const/4 v2, 0x0

    .line 688
    move-object v1, p0

    goto :goto_2

    .line 690
    :cond_7
    move-object v2, p0

    .line 691
    move-object v1, p0

    goto :goto_2

    .line 700
    .end local v0           #addrMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v1           #header_fromEmail:Ljava/lang/String;
    .end local v2           #header_fromName:Ljava/lang/String;
    .end local v3           #m:Ljava/util/regex/Matcher;
    .end local v4           #m2:Ljava/util/regex/Matcher;
    :cond_8
    const/4 v0, 0x0

    goto/16 :goto_1
.end method

.method static final process(Ljava/util/HashMap;)V
    .locals 11
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p0, headers:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v10, 0x1

    const/4 v9, 0x2

    .line 81
    const-string v6, "content-type"

    invoke-virtual {p0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 82
    .local v5, tag:Ljava/lang/String;
    invoke-static {}, Lcom/htc/android/mail/Mail;->getDefaultCharset()Ljava/lang/String;

    move-result-object v0

    .line 83
    .local v0, headerCharset:Ljava/lang/String;
    if-nez v5, :cond_6

    .line 84
    const-string v6, "content-type"

    const-string v7, "text/plain; charset=ISO8859-1"

    invoke-virtual {p0, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    :goto_0
    const-string v6, "from"

    invoke-virtual {p0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .end local v5           #tag:Ljava/lang/String;
    check-cast v5, Ljava/lang/String;

    .line 90
    .restart local v5       #tag:Ljava/lang/String;
    if-eqz v5, :cond_1

    .line 91
    sget-object v6, Lcom/htc/android/mail/Headers;->sFromP:Ljava/util/regex/Pattern;

    invoke-virtual {v6, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 92
    .local v3, m:Ljava/util/regex/Matcher;
    const-string v2, ""

    .line 93
    .local v2, header_fromName:Ljava/lang/String;
    const-string v1, ""

    .line 95
    .local v1, header_fromEmail:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 97
    invoke-virtual {v3, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v0}, Lcom/htc/android/mail/Headers$Rfc2047;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 98
    invoke-virtual {v3, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/htc/android/mail/Headers$Rfc2047;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 100
    const-string v6, "from"

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_0

    const-string v2, ""

    .end local v2           #header_fromName:Ljava/lang/String;
    :cond_0
    invoke-virtual {p0, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    const-string v6, "fromEmail"

    invoke-virtual {v3, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/htc/android/mail/Headers$Rfc2047;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    .end local v1           #header_fromEmail:Ljava/lang/String;
    .end local v3           #m:Ljava/util/regex/Matcher;
    :cond_1
    :goto_1
    const-string v6, "subject"

    invoke-virtual {p0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .end local v5           #tag:Ljava/lang/String;
    check-cast v5, Ljava/lang/String;

    .line 144
    .restart local v5       #tag:Ljava/lang/String;
    if-eqz v5, :cond_2

    .line 145
    const-string v6, "subject"

    invoke-static {v5, v0}, Lcom/htc/android/mail/Headers$Rfc2047;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    const-string v6, "subjectCharset"

    invoke-static {v5}, Lcom/htc/android/mail/Headers;->getCharsetFromHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    :cond_2
    const-string v6, "cc"

    invoke-virtual {p0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .end local v5           #tag:Ljava/lang/String;
    check-cast v5, Ljava/lang/String;

    .line 150
    .restart local v5       #tag:Ljava/lang/String;
    if-eqz v5, :cond_3

    .line 151
    invoke-static {v5, v0}, Lcom/htc/android/mail/Headers$Rfc2047;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 152
    const-string v6, "cc"

    invoke-virtual {p0, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    :cond_3
    const-string v6, "to"

    invoke-virtual {p0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .end local v5           #tag:Ljava/lang/String;
    check-cast v5, Ljava/lang/String;

    .line 157
    .restart local v5       #tag:Ljava/lang/String;
    if-eqz v5, :cond_4

    .line 158
    invoke-static {v5, v0}, Lcom/htc/android/mail/Headers$Rfc2047;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 159
    const-string v6, "to"

    invoke-virtual {p0, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    :cond_4
    const-string v6, "reply-to"

    invoke-virtual {p0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .end local v5           #tag:Ljava/lang/String;
    check-cast v5, Ljava/lang/String;

    .line 164
    .restart local v5       #tag:Ljava/lang/String;
    if-eqz v5, :cond_5

    .line 165
    invoke-static {v5, v0}, Lcom/htc/android/mail/Headers$Rfc2047;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 166
    const-string v6, "reply-to"

    invoke-virtual {p0, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    :cond_5
    const-string v6, "importance"

    invoke-virtual {p0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .end local v5           #tag:Ljava/lang/String;
    check-cast v5, Ljava/lang/String;

    .line 170
    .restart local v5       #tag:Ljava/lang/String;
    const-string v6, "importance"

    invoke-virtual {p0, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    return-void

    .line 86
    :cond_6
    const-string v6, "charset"

    invoke-static {}, Lcom/htc/android/mail/Mail;->getDefaultCharset()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/htc/android/mail/Headers;->getAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 104
    .restart local v1       #header_fromEmail:Ljava/lang/String;
    .restart local v2       #header_fromName:Ljava/lang/String;
    .restart local v3       #m:Ljava/util/regex/Matcher;
    :cond_7
    invoke-static {v5}, Lcom/htc/android/mail/Headers$Rfc2047;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 105
    sget-boolean v6, Lcom/htc/android/mail/Mail;->MAIL_DETAIL_DEBUG:Z

    if-eqz v6, :cond_8

    .line 106
    const-string v6, "ROY"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "from:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    :cond_8
    sget-object v6, Lcom/htc/android/mail/Headers;->sFromP:Ljava/util/regex/Pattern;

    invoke-virtual {v6, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 108
    .local v4, m2:Ljava/util/regex/Matcher;
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    move-result v6

    if-eqz v6, :cond_a

    .line 109
    invoke-virtual {v4, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    .line 110
    invoke-virtual {v4, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    .line 138
    :goto_2
    const-string v6, "from"

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_9

    const-string v2, ""

    .end local v2           #header_fromName:Ljava/lang/String;
    :cond_9
    invoke-virtual {p0, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    const-string v6, "fromEmail"

    invoke-virtual {p0, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 112
    .restart local v2       #header_fromName:Ljava/lang/String;
    :cond_a
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_b

    .line 113
    const-string v2, "none"

    .line 114
    const-string v1, "none"

    goto :goto_2

    .line 115
    :cond_b
    const-string v6, "<"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 118
    const-string v2, ""

    .line 119
    const-string v6, "<"

    const-string v7, ""

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    const-string v7, ">"

    const-string v8, ""

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 127
    :cond_c
    const-string v6, "@"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 130
    const-string v2, ""

    .line 131
    move-object v1, v5

    goto :goto_2

    .line 133
    :cond_d
    move-object v2, v5

    .line 134
    move-object v1, v5

    goto :goto_2
.end method

.method public static final splitMailAddress(Ljava/lang/String;Z)Ljava/util/ArrayList;
    .locals 2
    .parameter "value"
    .parameter "decodeIfNeed"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/android/mail/Mailaddress;",
            ">;"
        }
    .end annotation

    .prologue
    .line 536
    invoke-static {}, Lcom/htc/android/mail/Mail;->getDefaultCharset()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ISO8859-1"

    invoke-static {p0, p1, v0, v1}, Lcom/htc/android/mail/Headers;->splitMailAddress(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public static final splitMailAddress(Ljava/lang/String;ZLjava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .parameter "value"
    .parameter "decodeIfNeed"
    .parameter "charset"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/android/mail/Mailaddress;",
            ">;"
        }
    .end annotation

    .prologue
    .line 540
    const-string v0, "ISO8859-1"

    invoke-static {p0, p1, p2, v0}, Lcom/htc/android/mail/Headers;->splitMailAddress(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public static final splitMailAddress(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 2
    .parameter "value"
    .parameter "decodeIfNeed"
    .parameter "charset"
    .parameter "orgCharset"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/android/mail/Mailaddress;",
            ">;"
        }
    .end annotation

    .prologue
    .line 544
    if-nez p2, :cond_0

    invoke-static {}, Lcom/htc/android/mail/Mail;->getDefaultCharset()Ljava/lang/String;

    move-result-object p2

    .line 545
    :cond_0
    const/4 v0, 0x0

    .line 546
    .local v0, addressList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/Mailaddress;>;"
    if-nez p0, :cond_1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 548
    :goto_0
    return-object v1

    .line 547
    :cond_1
    invoke-static {p0}, Lcom/htc/android/mail/Mailaddress;->parse(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    move-object v1, v0

    .line 548
    goto :goto_0
.end method

.method public static final splitMailAddressFor2003(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 10
    .parameter "value"
    .parameter "decodeIfNeed"
    .parameter "charset"
    .parameter "orgCharset"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/android/mail/Mailaddress;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    .line 553
    if-nez p2, :cond_0

    invoke-static {}, Lcom/htc/android/mail/Mail;->getDefaultCharset()Ljava/lang/String;

    move-result-object p2

    .line 554
    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 557
    .local v4, mAddress:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/Mailaddress;>;"
    if-nez p0, :cond_2

    .line 593
    :cond_1
    return-object v4

    .line 559
    :cond_2
    invoke-static {}, Lcom/htc/android/mail/Regex;->getInstance()Lcom/htc/android/mail/Regex;

    move-result-object v7

    const/16 v8, 0xe

    invoke-virtual {v7, v8}, Lcom/htc/android/mail/Regex;->getPattern(I)Ljava/util/regex/Pattern;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 560
    .local v0, m:Ljava/util/regex/Matcher;
    :goto_0
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 561
    new-instance v1, Lcom/htc/android/mail/Mailaddress;

    invoke-direct {v1}, Lcom/htc/android/mail/Mailaddress;-><init>()V

    .line 562
    .local v1, mAddr:Lcom/htc/android/mail/Mailaddress;
    invoke-virtual {v0, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    .line 563
    .local v5, mDisplay:Ljava/lang/String;
    const/4 v7, 0x2

    invoke-virtual {v0, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    .line 564
    .local v2, mAddr1:Ljava/lang/String;
    const/4 v7, 0x3

    invoke-virtual {v0, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    .line 568
    .local v3, mAddr2:Ljava/lang/String;
    if-eqz v2, :cond_5

    .line 569
    iput-object v2, v1, Lcom/htc/android/mail/Mailaddress;->mEmail:Ljava/lang/String;

    .line 574
    :goto_1
    if-nez v5, :cond_3

    .line 575
    const-string v5, ""

    .line 577
    :cond_3
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 578
    .local v6, mUndecode:Ljava/lang/String;
    const-string v7, "\""

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    const-string v7, "\""

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 579
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v6, v9, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 582
    :cond_4
    if-nez p1, :cond_6

    .line 583
    iput-object v6, v1, Lcom/htc/android/mail/Mailaddress;->mDisplayName:Ljava/lang/String;

    .line 591
    :goto_2
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 571
    .end local v6           #mUndecode:Ljava/lang/String;
    :cond_5
    iput-object v3, v1, Lcom/htc/android/mail/Mailaddress;->mEmail:Ljava/lang/String;

    goto :goto_1

    .line 584
    .restart local v6       #mUndecode:Ljava/lang/String;
    :cond_6
    if-nez p3, :cond_7

    .line 585
    invoke-static {v6, p2}, Lcom/htc/android/mail/Headers$Rfc2047;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v1, Lcom/htc/android/mail/Mailaddress;->mDisplayName:Ljava/lang/String;

    goto :goto_2

    .line 587
    :cond_7
    invoke-static {v6, p2, p3}, Lcom/htc/android/mail/Headers$Rfc2047;->decode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v1, Lcom/htc/android/mail/Mailaddress;->mDisplayName:Ljava/lang/String;

    goto :goto_2
.end method
