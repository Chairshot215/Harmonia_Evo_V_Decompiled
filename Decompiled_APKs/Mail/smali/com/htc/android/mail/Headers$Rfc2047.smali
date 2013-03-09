.class public Lcom/htc/android/mail/Headers$Rfc2047;
.super Ljava/lang/Object;
.source "Headers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/Headers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Rfc2047"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 704
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decode(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "header"

    .prologue
    .line 707
    invoke-static {}, Lcom/htc/android/mail/Mail;->getDefaultCharset()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/htc/android/mail/Headers$Rfc2047;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "header"
    .parameter "charset"

    .prologue
    .line 711
    const-string v0, "ISO8859-1"

    invoke-static {p0, p1, v0}, Lcom/htc/android/mail/Headers$Rfc2047;->decode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static decode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "header"
    .parameter "charset"
    .parameter "orgCharset"

    .prologue
    const/4 v4, 0x4

    .line 715
    if-nez p0, :cond_1

    .line 716
    const-string v1, ""

    .line 746
    :cond_0
    :goto_0
    return-object v1

    .line 718
    :cond_1
    if-nez p1, :cond_2

    .line 719
    invoke-static {}, Lcom/htc/android/mail/Mail;->getDefaultCharset()Ljava/lang/String;

    move-result-object p1

    .line 722
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 723
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x2

    if-lt v2, v3, :cond_3

    const-string v2, "\""

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "\""

    invoke-virtual {p0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 724
    const/4 v2, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 727
    :cond_3
    const-string v2, "=?"

    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 728
    move-object v1, p0

    .line 729
    .local v1, result:Ljava/lang/String;
    invoke-static {}, Lcom/htc/android/mail/Regex;->getInstance()Lcom/htc/android/mail/Regex;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/htc/android/mail/Regex;->getPattern(I)Ljava/util/regex/Pattern;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 730
    .local v0, m:Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 732
    :cond_4
    invoke-static {v1, v0}, Lcom/htc/android/mail/Headers$Rfc2047;->decodeInternal(Ljava/lang/String;Ljava/util/regex/Matcher;)Ljava/lang/String;

    move-result-object v1

    .line 733
    const-string v2, "=?"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 736
    invoke-static {}, Lcom/htc/android/mail/Regex;->getInstance()Lcom/htc/android/mail/Regex;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/htc/android/mail/Regex;->getPattern(I)Ljava/util/regex/Pattern;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 737
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_0

    .line 743
    :cond_5
    invoke-static {p0, p1, p2}, Lcom/htc/android/mail/Headers$Rfc2047;->decodeNoneRfc2047(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 746
    .end local v0           #m:Ljava/util/regex/Matcher;
    .end local v1           #result:Ljava/lang/String;
    :cond_6
    invoke-static {p0, p1, p2}, Lcom/htc/android/mail/Headers$Rfc2047;->decodeNoneRfc2047(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private static decodeInternal(Ljava/lang/String;Ljava/util/regex/Matcher;)Ljava/lang/String;
    .locals 14
    .parameter "header"
    .parameter "m"

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 751
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 752
    .local v7, lines:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/ByteString;>;"
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 754
    .local v8, result:Ljava/lang/StringBuilder;
    const/4 v6, 0x0

    .line 755
    .local v6, headerStart:I
    const/4 v9, 0x0

    .line 756
    .local v9, start:I
    const/4 v5, 0x0

    .line 758
    .local v5, end:I
    :cond_0
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->start()I

    move-result v9

    .line 759
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->end()I

    move-result v5

    .line 761
    if-ge v6, v9, :cond_1

    .line 762
    invoke-virtual {p0, v6, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 765
    :cond_1
    invoke-virtual {p1, v13}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    .line 766
    .local v0, charSet:Ljava/lang/String;
    const/4 v10, 0x2

    invoke-virtual {p1, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    .line 767
    .local v4, encoding:Ljava/lang/String;
    const/4 v10, 0x3

    invoke-virtual {p1, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    .line 769
    .local v1, codedText:Ljava/lang/String;
    const-string v10, "q"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 771
    const/16 v10, 0x5f

    const/16 v11, 0x20

    invoke-virtual {v1, v10, v11}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    .line 773
    new-instance v10, Lcom/htc/android/mail/ByteString;

    invoke-direct {v10, v1}, Lcom/htc/android/mail/ByteString;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 775
    const/4 v10, 0x0

    invoke-static {v7, v12, v13, v10}, Lcom/htc/android/mail/QuotedPrintable;->decode(Ljava/util/ArrayList;IILjava/lang/String;)V

    .line 777
    invoke-static {v7, v12, v13, v0}, Lcom/htc/android/mail/Util;->linesToString(Ljava/util/ArrayList;IILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 778
    .local v2, decodedText:Ljava/lang/String;
    const-string v10, "BIG5"

    invoke-virtual {v0, v10}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v10

    if-nez v10, :cond_2

    .line 779
    invoke-static {v2}, Lcom/htc/android/mail/Util;->FixBig5UnicodeForJP(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 782
    :cond_2
    invoke-virtual {v7, v12}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 783
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 798
    .end local v2           #decodedText:Ljava/lang/String;
    :cond_3
    :goto_0
    move v6, v5

    .line 799
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result v10

    if-nez v10, :cond_0

    .line 801
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v10

    if-ge v5, v10, :cond_4

    .line 802
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {p0, v5, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 805
    :cond_4
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    return-object v10

    .line 784
    :cond_5
    const-string v10, "b"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 785
    const-string v2, ""

    .line 787
    .restart local v2       #decodedText:Ljava/lang/String;
    :try_start_0
    invoke-static {v1, v0}, Lcom/htc/android/mail/Base64;->decodeToString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 792
    :goto_1
    const-string v10, "BIG5"

    invoke-virtual {v0, v10}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v10

    if-nez v10, :cond_6

    .line 793
    invoke-static {v2}, Lcom/htc/android/mail/Util;->FixBig5UnicodeForJP(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 795
    :cond_6
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 788
    :catch_0
    move-exception v3

    .line 789
    .local v3, e:Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v3}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 790
    const-string v2, ""

    goto :goto_1
.end method

.method private static decodeNoneRfc2047(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "header"
    .parameter "charset"
    .parameter "orgCharset"

    .prologue
    .line 811
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 812
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x7e

    if-le v3, v4, :cond_1

    .line 814
    :try_start_0
    invoke-virtual {p0, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 815
    .local v0, bytes:[B
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0, p1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .end local p0
    .local v1, header:Ljava/lang/String;
    move-object p0, v1

    .line 821
    .end local v0           #bytes:[B
    .end local v1           #header:Ljava/lang/String;
    .restart local p0
    :cond_0
    :goto_1
    return-object p0

    .line 811
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 816
    :catch_0
    move-exception v3

    goto :goto_1
.end method
