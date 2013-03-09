.class Lcom/android/org/bouncycastle/asn1/x500/style/X500NameTokenizer;
.super Ljava/lang/Object;
.source "X500NameTokenizer.java"


# instance fields
.field private buf:Ljava/lang/StringBuffer;

.field private index:I

.field private seperator:C

.field private value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/16 v0, 0x2c

    invoke-direct {p0, p1, v0}, Lcom/android/org/bouncycastle/asn1/x500/style/X500NameTokenizer;-><init>(Ljava/lang/String;C)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;C)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x500/style/X500NameTokenizer;->buf:Ljava/lang/StringBuffer;

    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/x500/style/X500NameTokenizer;->value:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/org/bouncycastle/asn1/x500/style/X500NameTokenizer;->index:I

    iput-char p2, p0, Lcom/android/org/bouncycastle/asn1/x500/style/X500NameTokenizer;->seperator:C

    return-void
.end method


# virtual methods
.method public hasMoreTokens()Z
    .locals 2

    iget v0, p0, Lcom/android/org/bouncycastle/asn1/x500/style/X500NameTokenizer;->index:I

    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x500/style/X500NameTokenizer;->value:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public nextToken()Ljava/lang/String;
    .locals 9

    const/16 v8, 0x2b

    const/4 v4, 0x0

    const/16 v7, 0x5c

    iget v5, p0, Lcom/android/org/bouncycastle/asn1/x500/style/X500NameTokenizer;->index:I

    iget-object v6, p0, Lcom/android/org/bouncycastle/asn1/x500/style/X500NameTokenizer;->value:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-ne v5, v6, :cond_0

    const/4 v4, 0x0

    :goto_0
    return-object v4

    :cond_0
    iget v5, p0, Lcom/android/org/bouncycastle/asn1/x500/style/X500NameTokenizer;->index:I

    add-int/lit8 v1, v5, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    iget-object v5, p0, Lcom/android/org/bouncycastle/asn1/x500/style/X500NameTokenizer;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuffer;->setLength(I)V

    :goto_1
    iget-object v5, p0, Lcom/android/org/bouncycastle/asn1/x500/style/X500NameTokenizer;->value:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-eq v1, v5, :cond_9

    iget-object v5, p0, Lcom/android/org/bouncycastle/asn1/x500/style/X500NameTokenizer;->value:Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v5, 0x22

    if-ne v0, v5, :cond_3

    if-nez v2, :cond_2

    if-nez v3, :cond_1

    const/4 v3, 0x1

    :goto_2
    const/4 v2, 0x0

    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    move v3, v4

    goto :goto_2

    :cond_2
    iget-object v5, p0, Lcom/android/org/bouncycastle/asn1/x500/style/X500NameTokenizer;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    :cond_3
    if-nez v2, :cond_4

    if-eqz v3, :cond_7

    :cond_4
    const/16 v5, 0x23

    if-ne v0, v5, :cond_6

    iget-object v5, p0, Lcom/android/org/bouncycastle/asn1/x500/style/X500NameTokenizer;->buf:Ljava/lang/StringBuffer;

    iget-object v6, p0, Lcom/android/org/bouncycastle/asn1/x500/style/X500NameTokenizer;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v5

    const/16 v6, 0x3d

    if-ne v5, v6, :cond_6

    iget-object v5, p0, Lcom/android/org/bouncycastle/asn1/x500/style/X500NameTokenizer;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_5
    :goto_4
    iget-object v5, p0, Lcom/android/org/bouncycastle/asn1/x500/style/X500NameTokenizer;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    goto :goto_3

    :cond_6
    if-ne v0, v8, :cond_5

    iget-char v5, p0, Lcom/android/org/bouncycastle/asn1/x500/style/X500NameTokenizer;->seperator:C

    if-eq v5, v8, :cond_5

    iget-object v5, p0, Lcom/android/org/bouncycastle/asn1/x500/style/X500NameTokenizer;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_4

    :cond_7
    if-ne v0, v7, :cond_8

    const/4 v2, 0x1

    goto :goto_3

    :cond_8
    iget-char v5, p0, Lcom/android/org/bouncycastle/asn1/x500/style/X500NameTokenizer;->seperator:C

    if-ne v0, v5, :cond_a

    :cond_9
    iput v1, p0, Lcom/android/org/bouncycastle/asn1/x500/style/X500NameTokenizer;->index:I

    iget-object v4, p0, Lcom/android/org/bouncycastle/asn1/x500/style/X500NameTokenizer;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_a
    iget-object v5, p0, Lcom/android/org/bouncycastle/asn1/x500/style/X500NameTokenizer;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_3
.end method
