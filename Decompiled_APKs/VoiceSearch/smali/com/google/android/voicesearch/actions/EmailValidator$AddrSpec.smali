.class Lcom/google/android/voicesearch/actions/EmailValidator$AddrSpec;
.super Ljava/lang/Object;
.source "EmailValidator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/voicesearch/actions/EmailValidator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AddrSpec"
.end annotation


# static fields
.field private static final ATEXT_BITS:Ljava/util/BitSet;


# instance fields
.field private domain:Ljava/lang/String;

.field private localPart:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/16 v3, 0x7b

    .line 83
    new-instance v0, Ljava/util/BitSet;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    .line 84
    .local v0, bits:Ljava/util/BitSet;
    const/16 v1, 0x30

    const/16 v2, 0x3a

    invoke-virtual {v0, v1, v2}, Ljava/util/BitSet;->set(II)V

    .line 85
    const/16 v1, 0x41

    const/16 v2, 0x5b

    invoke-virtual {v0, v1, v2}, Ljava/util/BitSet;->set(II)V

    .line 86
    const/16 v1, 0x61

    invoke-virtual {v0, v1, v3}, Ljava/util/BitSet;->set(II)V

    .line 87
    const/16 v1, 0x21

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 88
    const/16 v1, 0x23

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 89
    const/16 v1, 0x24

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 90
    const/16 v1, 0x25

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 91
    const/16 v1, 0x26

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 92
    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 93
    const/16 v1, 0x2a

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 94
    const/16 v1, 0x2b

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 95
    const/16 v1, 0x2d

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 96
    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 97
    const/16 v1, 0x3d

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 98
    const/16 v1, 0x3f

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 99
    const/16 v1, 0x5e

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 100
    const/16 v1, 0x5f

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 101
    const/16 v1, 0x60

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 102
    invoke-virtual {v0, v3}, Ljava/util/BitSet;->set(I)V

    .line 103
    const/16 v1, 0x7c

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 104
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 105
    const/16 v1, 0x7e

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 106
    sput-object v0, Lcom/google/android/voicesearch/actions/EmailValidator$AddrSpec;->ATEXT_BITS:Ljava/util/BitSet;

    .line 107
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 4
    .parameter "address"

    .prologue
    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 111
    .local v1, len:I
    if-lez v1, :cond_0

    add-int/lit8 v2, v1, -0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x22

    if-ne v2, v3, :cond_0

    .line 113
    iput-object p1, p0, Lcom/google/android/voicesearch/actions/EmailValidator$AddrSpec;->localPart:Ljava/lang/String;

    .line 114
    const-string v2, ""

    iput-object v2, p0, Lcom/google/android/voicesearch/actions/EmailValidator$AddrSpec;->domain:Ljava/lang/String;

    .line 125
    :goto_0
    return-void

    .line 116
    :cond_0
    const/16 v2, 0x40

    invoke-virtual {p1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 117
    .local v0, index:I
    if-gez v0, :cond_1

    .line 118
    iput-object p1, p0, Lcom/google/android/voicesearch/actions/EmailValidator$AddrSpec;->localPart:Ljava/lang/String;

    .line 119
    const-string v2, ""

    iput-object v2, p0, Lcom/google/android/voicesearch/actions/EmailValidator$AddrSpec;->domain:Ljava/lang/String;

    goto :goto_0

    .line 121
    :cond_1
    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/voicesearch/actions/EmailValidator$AddrSpec;->localPart:Ljava/lang/String;

    .line 122
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/voicesearch/actions/EmailValidator$AddrSpec;->domain:Ljava/lang/String;

    goto :goto_0
.end method

.method private isPeriod(C)Z
    .locals 1
    .parameter "ch"

    .prologue
    .line 231
    const-string v0, ".\u3002\uff0e\uff61"

    invoke-virtual {v0, p1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public validateDomain()Z
    .locals 14

    .prologue
    .line 166
    iget-object v11, p0, Lcom/google/android/voicesearch/actions/EmailValidator$AddrSpec;->domain:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v7

    .line 167
    .local v7, len:I
    if-gtz v7, :cond_0

    .line 168
    const/4 v11, 0x0

    .line 227
    :goto_0
    return v11

    .line 170
    :cond_0
    const/16 v11, 0xff

    if-le v7, v11, :cond_1

    .line 171
    const/4 v11, 0x0

    goto :goto_0

    .line 173
    :cond_1
    const/4 v1, 0x1

    .line 174
    .local v1, hasUnicode:Z
    const/4 v6, -0x1

    .line 175
    .local v6, lastPeriod:I
    const/4 v5, 0x0

    .line 176
    .local v5, labelStart:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v7, :cond_a

    .line 177
    iget-object v11, p0, Lcom/google/android/voicesearch/actions/EmailValidator$AddrSpec;->domain:Ljava/lang/String;

    invoke-virtual {v11, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 178
    .local v0, ch:C
    invoke-direct {p0, v0}, Lcom/google/android/voicesearch/actions/EmailValidator$AddrSpec;->isPeriod(C)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 179
    if-eqz v2, :cond_2

    add-int/lit8 v11, v6, 0x1

    if-eq v2, v11, :cond_2

    add-int/lit8 v11, v7, -0x1

    if-eq v2, v11, :cond_2

    sub-int v11, v2, v5

    const/16 v12, 0x3f

    if-le v11, v12, :cond_3

    .line 181
    :cond_2
    const/4 v11, 0x0

    goto :goto_0

    .line 183
    :cond_3
    move v6, v2

    .line 184
    add-int/lit8 v5, v2, 0x1

    .line 176
    :cond_4
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 185
    :cond_5
    const/16 v11, 0x30

    if-gt v11, v0, :cond_6

    const/16 v11, 0x39

    if-le v0, v11, :cond_4

    :cond_6
    const/16 v11, 0x61

    if-gt v11, v0, :cond_7

    const/16 v11, 0x7a

    if-le v0, v11, :cond_4

    :cond_7
    const/16 v11, 0x41

    if-gt v11, v0, :cond_8

    const/16 v11, 0x5a

    if-le v0, v11, :cond_4

    :cond_8
    const/16 v11, 0x2d

    if-eq v0, v11, :cond_4

    .line 188
    const/16 v11, 0x80

    if-ge v0, v11, :cond_9

    .line 189
    const/4 v11, 0x0

    goto :goto_0

    .line 191
    :cond_9
    const/4 v1, 0x1

    goto :goto_2

    .line 194
    .end local v0           #ch:C
    :cond_a
    if-ltz v6, :cond_f

    .line 195
    sub-int v11, v7, v6

    add-int/lit8 v10, v11, -0x1

    .line 201
    .local v10, tldLength:I
    const/4 v11, 0x1

    if-ne v10, v11, :cond_d

    const/16 v11, 0x30

    iget-object v12, p0, Lcom/google/android/voicesearch/actions/EmailValidator$AddrSpec;->domain:Ljava/lang/String;

    add-int/lit8 v13, v6, 0x1

    invoke-virtual {v12, v13}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .restart local v0       #ch:C
    if-gt v11, v0, :cond_d

    const/16 v11, 0x39

    if-gt v0, v11, :cond_d

    .line 211
    .end local v0           #ch:C
    :cond_b
    if-eqz v1, :cond_c

    .line 213
    :try_start_0
    iget-object v11, p0, Lcom/google/android/voicesearch/actions/EmailValidator$AddrSpec;->domain:Ljava/lang/String;

    invoke-static {v11}, Ljava/net/IDN;->toASCII(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    .line 227
    :cond_c
    const/4 v11, 0x1

    goto :goto_0

    .line 203
    :cond_d
    const/4 v11, 0x2

    if-lt v10, v11, :cond_e

    const/4 v11, 0x6

    if-le v10, v11, :cond_b

    .line 204
    :cond_e
    const/4 v11, 0x0

    goto :goto_0

    .line 209
    .end local v10           #tldLength:I
    :cond_f
    const/4 v11, 0x0

    goto :goto_0

    .line 214
    .restart local v10       #tldLength:I
    :catch_0
    move-exception v3

    .line 215
    .local v3, iae:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v3}, Ljava/lang/IllegalArgumentException;->getCause()Ljava/lang/Throwable;

    move-result-object v11

    instance-of v11, v11, Ljava/text/ParseException;

    if-eqz v11, :cond_10

    .line 216
    invoke-virtual {v3}, Ljava/lang/IllegalArgumentException;->getCause()Ljava/lang/Throwable;

    move-result-object v9

    check-cast v9, Ljava/text/ParseException;

    .line 217
    .local v9, pe:Ljava/text/ParseException;
    invoke-virtual {v9}, Ljava/text/ParseException;->getErrorOffset()I

    move-result v8

    .line 218
    .local v8, offset:I
    if-ltz v8, :cond_10

    if-ge v8, v7, :cond_10

    .line 219
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 222
    .end local v8           #offset:I
    .end local v9           #pe:Ljava/text/ParseException;
    :cond_10
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 223
    .end local v3           #iae:Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v4

    .line 224
    .local v4, ioobe:Ljava/lang/IndexOutOfBoundsException;
    const/4 v11, 0x0

    goto/16 :goto_0
.end method

.method public validateLocalPart()Z
    .locals 7

    .prologue
    const/16 v6, 0x22

    const/4 v3, 0x0

    .line 128
    iget-object v4, p0, Lcom/google/android/voicesearch/actions/EmailValidator$AddrSpec;->localPart:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v2

    .line 129
    .local v2, len:I
    if-lez v2, :cond_0

    const/16 v4, 0x3e6

    if-le v2, v4, :cond_1

    .line 162
    :cond_0
    :goto_0
    return v3

    .line 132
    :cond_1
    iget-object v4, p0, Lcom/google/android/voicesearch/actions/EmailValidator$AddrSpec;->localPart:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v6, :cond_3

    .line 133
    const/4 v4, 0x2

    if-lt v2, v4, :cond_0

    iget-object v4, p0, Lcom/google/android/voicesearch/actions/EmailValidator$AddrSpec;->localPart:Ljava/lang/String;

    add-int/lit8 v5, v2, -0x1

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v6, :cond_0

    .line 136
    add-int/lit8 v2, v2, -0x1

    .line 137
    const/4 v1, 0x1

    .local v1, i:I
    :goto_1
    if-ge v1, v2, :cond_5

    .line 138
    iget-object v4, p0, Lcom/google/android/voicesearch/actions/EmailValidator$AddrSpec;->localPart:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 139
    .local v0, ch:C
    if-eq v0, v6, :cond_0

    .line 141
    const/16 v4, 0x5c

    if-eq v0, v4, :cond_2

    .line 137
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 144
    :cond_2
    add-int/lit8 v4, v1, 0x1

    if-ge v4, v2, :cond_0

    .line 145
    add-int/lit8 v1, v1, 0x1

    .line 146
    goto :goto_2

    .line 151
    .end local v0           #ch:C
    .end local v1           #i:I
    :cond_3
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_3
    if-ge v1, v2, :cond_5

    .line 152
    iget-object v4, p0, Lcom/google/android/voicesearch/actions/EmailValidator$AddrSpec;->localPart:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 153
    .restart local v0       #ch:C
    const/16 v4, 0x2e

    if-ne v0, v4, :cond_4

    .line 151
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 155
    :cond_4
    sget-object v4, Lcom/google/android/voicesearch/actions/EmailValidator$AddrSpec;->ATEXT_BITS:Ljava/util/BitSet;

    invoke-virtual {v4}, Ljava/util/BitSet;->length()I

    move-result v4

    if-ge v0, v4, :cond_0

    sget-object v4, Lcom/google/android/voicesearch/actions/EmailValidator$AddrSpec;->ATEXT_BITS:Ljava/util/BitSet;

    invoke-virtual {v4, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_4

    .line 162
    .end local v0           #ch:C
    :cond_5
    const/4 v3, 0x1

    goto :goto_0
.end method
