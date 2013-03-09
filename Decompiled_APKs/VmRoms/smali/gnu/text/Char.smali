.class public Lgnu/text/Char;
.super Ljava/lang/Object;
.source "Char.java"

# interfaces
.implements Ljava/lang/Comparable;
.implements Ljava/io/Externalizable;


# static fields
.field static ascii:[Lgnu/text/Char;

.field static charNameValues:[C

.field static charNames:[Ljava/lang/String;

.field static hashTable:Lgnu/text/CharMap;


# instance fields
.field value:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/16 v3, 0xf

    .line 76
    new-instance v1, Lgnu/text/CharMap;

    invoke-direct {v1}, Lgnu/text/CharMap;-><init>()V

    sput-object v1, Lgnu/text/Char;->hashTable:Lgnu/text/CharMap;

    .line 80
    const/16 v1, 0x80

    new-array v1, v1, [Lgnu/text/Char;

    sput-object v1, Lgnu/text/Char;->ascii:[Lgnu/text/Char;

    .line 81
    const/16 v0, 0x80

    .local v0, i:I
    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_0

    .line 82
    sget-object v1, Lgnu/text/Char;->ascii:[Lgnu/text/Char;

    new-instance v2, Lgnu/text/Char;

    invoke-direct {v2, v0}, Lgnu/text/Char;-><init>(I)V

    aput-object v2, v1, v0

    goto :goto_0

    .line 103
    :cond_0
    new-array v1, v3, [C

    fill-array-data v1, :array_0

    sput-object v1, Lgnu/text/Char;->charNameValues:[C

    .line 107
    new-array v1, v3, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "space"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "tab"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "newline"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "linefeed"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "return"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "page"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "backspace"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "esc"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "delete"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "del"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "rubout"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, "alarm"

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-string v3, "bel"

    aput-object v3, v1, v2

    const/16 v2, 0xd

    const-string v3, "vtab"

    aput-object v3, v1, v2

    const/16 v2, 0xe

    const-string v3, "nul"

    aput-object v3, v1, v2

    sput-object v1, Lgnu/text/Char;->charNames:[Ljava/lang/String;

    return-void

    .line 103
    nop

    :array_0
    .array-data 0x2
        0x20t 0x0t
        0x9t 0x0t
        0xat 0x0t
        0xat 0x0t
        0xdt 0x0t
        0xct 0x0t
        0x8t 0x0t
        0x1bt 0x0t
        0x7ft 0x0t
        0x7ft 0x0t
        0x7ft 0x0t
        0x7t 0x0t
        0x7t 0x0t
        0xbt 0x0t
        0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    return-void
.end method

.method constructor <init>(I)V
    .locals 0
    .parameter "ch"

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput p1, p0, Lgnu/text/Char;->value:I

    .line 41
    return-void
.end method

.method public static make(I)Lgnu/text/Char;
    .locals 2
    .parameter "ch"

    .prologue
    .line 87
    const/16 v0, 0x80

    if-ge p0, v0, :cond_0

    .line 88
    sget-object v0, Lgnu/text/Char;->ascii:[Lgnu/text/Char;

    aget-object v0, v0, p0

    .line 91
    :goto_0
    return-object v0

    .line 89
    :cond_0
    sget-object v0, Lgnu/text/Char;->hashTable:Lgnu/text/CharMap;

    monitor-enter v0

    .line 91
    :try_start_0
    sget-object v1, Lgnu/text/Char;->hashTable:Lgnu/text/CharMap;

    invoke-virtual {v1, p0}, Lgnu/text/CharMap;->get(I)Lgnu/text/Char;

    move-result-object v1

    monitor-exit v0

    move-object v0, v1

    goto :goto_0

    .line 92
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static nameToChar(Ljava/lang/String;)I
    .locals 10
    .parameter "name"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 125
    sget-object v6, Lgnu/text/Char;->charNames:[Ljava/lang/String;

    array-length v2, v6

    .local v2, i:I
    :cond_0
    add-int/lit8 v2, v2, -0x1

    if-ltz v2, :cond_1

    .line 127
    sget-object v6, Lgnu/text/Char;->charNames:[Ljava/lang/String;

    aget-object v6, v6, v2

    invoke-virtual {v6, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 128
    sget-object v6, Lgnu/text/Char;->charNameValues:[C

    aget-char v6, v6, v2

    .line 161
    :goto_0
    return v6

    .line 130
    :cond_1
    sget-object v6, Lgnu/text/Char;->charNames:[Ljava/lang/String;

    array-length v2, v6

    :cond_2
    add-int/lit8 v2, v2, -0x1

    if-ltz v2, :cond_3

    .line 132
    sget-object v6, Lgnu/text/Char;->charNames:[Ljava/lang/String;

    aget-object v6, v6, v2

    invoke-virtual {v6, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 133
    sget-object v6, Lgnu/text/Char;->charNameValues:[C

    aget-char v6, v6, v2

    goto :goto_0

    .line 135
    :cond_3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 136
    .local v3, len:I
    if-le v3, v9, :cond_5

    invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x75

    if-ne v6, v7, :cond_5

    .line 138
    const/4 v5, 0x0

    .line 139
    .local v5, value:I
    const/4 v4, 0x1

    .line 141
    .local v4, pos:I
    :goto_1
    if-ne v4, v3, :cond_4

    move v6, v5

    .line 142
    goto :goto_0

    .line 143
    :cond_4
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x10

    invoke-static {v6, v7}, Ljava/lang/Character;->digit(CI)I

    move-result v1

    .line 144
    .local v1, dig:I
    if-gez v1, :cond_7

    .line 151
    .end local v1           #dig:I
    .end local v4           #pos:I
    .end local v5           #value:I
    :cond_5
    const/4 v6, 0x3

    if-ne v3, v6, :cond_8

    invoke-virtual {p0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x2d

    if-ne v6, v7, :cond_8

    .line 153
    invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 154
    .local v0, ch:C
    const/16 v6, 0x63

    if-eq v0, v6, :cond_6

    const/16 v6, 0x43

    if-ne v0, v6, :cond_8

    .line 156
    :cond_6
    const/4 v6, 0x2

    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 157
    and-int/lit8 v6, v0, 0x1f

    goto :goto_0

    .line 146
    .end local v0           #ch:C
    .restart local v1       #dig:I
    .restart local v4       #pos:I
    .restart local v5       #value:I
    :cond_7
    shl-int/lit8 v6, v5, 0x4

    add-int v5, v6, v1

    .line 139
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 161
    .end local v1           #dig:I
    .end local v4           #pos:I
    .end local v5           #value:I
    :cond_8
    const/4 v6, -0x1

    goto :goto_0
.end method

.method public static print(ILgnu/lists/Consumer;)V
    .locals 2
    .parameter "i"
    .parameter "out"

    .prologue
    const/high16 v0, 0x1

    .line 50
    if-lt p0, v0, :cond_0

    .line 52
    sub-int v0, p0, v0

    shr-int/lit8 v0, v0, 0xa

    const v1, 0xd800

    add-int/2addr v0, v1

    int-to-char v0, v0

    invoke-interface {p1, v0}, Lgnu/lists/Consumer;->write(I)V

    .line 53
    and-int/lit16 v0, p0, 0x3ff

    const v1, 0xdc00

    add-int/2addr v0, v1

    int-to-char v0, v0

    invoke-interface {p1, v0}, Lgnu/lists/Consumer;->write(I)V

    .line 57
    :goto_0
    return-void

    .line 56
    :cond_0
    int-to-char v0, p0

    invoke-interface {p1, v0}, Lgnu/lists/Consumer;->write(I)V

    goto :goto_0
.end method

.method public static toScmReadableString(I)Ljava/lang/String;
    .locals 4
    .parameter "ch"

    .prologue
    .line 203
    new-instance v1, Ljava/lang/StringBuffer;

    const/16 v2, 0x14

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 204
    .local v1, sbuf:Ljava/lang/StringBuffer;
    const-string v2, "#\\"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 205
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v2, Lgnu/text/Char;->charNameValues:[C

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 207
    int-to-char v2, p0

    sget-object v3, Lgnu/text/Char;->charNameValues:[C

    aget-char v3, v3, v0

    if-ne v2, v3, :cond_0

    .line 209
    sget-object v2, Lgnu/text/Char;->charNames:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 210
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    .line 220
    :goto_1
    return-object v2

    .line 205
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 213
    :cond_1
    const/16 v2, 0x20

    if-lt p0, v2, :cond_2

    const/16 v2, 0x7f

    if-le p0, v2, :cond_3

    .line 215
    :cond_2
    const/16 v2, 0x78

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 216
    const/16 v2, 0x10

    invoke-static {p0, v2}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 220
    :goto_2
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 219
    :cond_3
    int-to-char v2, p0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2
.end method


# virtual methods
.method public final charValue()C
    .locals 1

    .prologue
    .line 61
    iget v0, p0, Lgnu/text/Char;->value:I

    int-to-char v0, v0

    return v0
.end method

.method public compareTo(Ljava/lang/Object;)I
    .locals 2
    .parameter "o"

    .prologue
    .line 266
    iget v0, p0, Lgnu/text/Char;->value:I

    check-cast p1, Lgnu/text/Char;

    .end local p1
    iget v1, p1, Lgnu/text/Char;->value:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .parameter "obj"

    .prologue
    .line 99
    if-eqz p1, :cond_0

    instance-of v0, p1, Lgnu/text/Char;

    if-eqz v0, :cond_0

    check-cast p1, Lgnu/text/Char;

    .end local p1
    invoke-virtual {p1}, Lgnu/text/Char;->intValue()I

    move-result v0

    iget v1, p0, Lgnu/text/Char;->value:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 71
    iget v0, p0, Lgnu/text/Char;->value:I

    return v0
.end method

.method public final intValue()I
    .locals 1

    .prologue
    .line 66
    iget v0, p0, Lgnu/text/Char;->value:I

    return v0
.end method

.method public print(Lgnu/lists/Consumer;)V
    .locals 1
    .parameter "out"

    .prologue
    .line 45
    iget v0, p0, Lgnu/text/Char;->value:I

    invoke-static {v0, p1}, Lgnu/text/Char;->print(ILgnu/lists/Consumer;)V

    .line 46
    return-void
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 5
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    const v4, 0xdc00

    const v3, 0xd800

    .line 250
    invoke-interface {p1}, Ljava/io/ObjectInput;->readChar()C

    move-result v1

    iput v1, p0, Lgnu/text/Char;->value:I

    .line 251
    iget v1, p0, Lgnu/text/Char;->value:I

    if-lt v1, v3, :cond_0

    iget v1, p0, Lgnu/text/Char;->value:I

    const v2, 0xdbff

    if-ge v1, v2, :cond_0

    .line 253
    invoke-interface {p1}, Ljava/io/ObjectInput;->readChar()C

    move-result v0

    .line 254
    .local v0, next:C
    if-lt v0, v4, :cond_0

    const v1, 0xdfff

    if-gt v0, v1, :cond_0

    .line 255
    iget v1, p0, Lgnu/text/Char;->value:I

    sub-int/2addr v1, v3

    shl-int/lit8 v1, v1, 0xa

    sub-int v2, v0, v4

    add-int/2addr v1, v2

    const/high16 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Lgnu/text/Char;->value:I

    .line 257
    .end local v0           #next:C
    :cond_0
    return-void
.end method

.method public readResolve()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .prologue
    .line 261
    iget v0, p0, Lgnu/text/Char;->value:I

    invoke-static {v0}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .prologue
    const/16 v6, 0x30

    const/16 v5, 0x27

    .line 166
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 167
    .local v0, buf:Ljava/lang/StringBuffer;
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 168
    iget v3, p0, Lgnu/text/Char;->value:I

    const/16 v4, 0x20

    if-lt v3, v4, :cond_0

    iget v3, p0, Lgnu/text/Char;->value:I

    const/16 v4, 0x7f

    if-ge v3, v4, :cond_0

    iget v3, p0, Lgnu/text/Char;->value:I

    if-eq v3, v5, :cond_0

    .line 169
    iget v3, p0, Lgnu/text/Char;->value:I

    int-to-char v3, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 197
    :goto_0
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 198
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 172
    :cond_0
    const/16 v3, 0x5c

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 173
    iget v3, p0, Lgnu/text/Char;->value:I

    if-ne v3, v5, :cond_1

    .line 174
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 175
    :cond_1
    iget v3, p0, Lgnu/text/Char;->value:I

    const/16 v4, 0xa

    if-ne v3, v4, :cond_2

    .line 176
    const/16 v3, 0x6e

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 177
    :cond_2
    iget v3, p0, Lgnu/text/Char;->value:I

    const/16 v4, 0xd

    if-ne v3, v4, :cond_3

    .line 178
    const/16 v3, 0x72

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 179
    :cond_3
    iget v3, p0, Lgnu/text/Char;->value:I

    const/16 v4, 0x9

    if-ne v3, v4, :cond_4

    .line 180
    const/16 v3, 0x74

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 181
    :cond_4
    iget v3, p0, Lgnu/text/Char;->value:I

    const/16 v4, 0x100

    if-ge v3, v4, :cond_6

    .line 183
    iget v3, p0, Lgnu/text/Char;->value:I

    invoke-static {v3}, Ljava/lang/Integer;->toOctalString(I)Ljava/lang/String;

    move-result-object v2

    .line 184
    .local v2, str:Ljava/lang/String;
    const/4 v3, 0x3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    sub-int v1, v3, v4

    .local v1, i:I
    :goto_1
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_5

    .line 185
    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 186
    :cond_5
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 190
    .end local v1           #i:I
    .end local v2           #str:Ljava/lang/String;
    :cond_6
    const/16 v3, 0x75

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 191
    iget v3, p0, Lgnu/text/Char;->value:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    .line 192
    .restart local v2       #str:Ljava/lang/String;
    const/4 v3, 0x4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    sub-int v1, v3, v4

    .restart local v1       #i:I
    :goto_2
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_7

    .line 193
    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 194
    :cond_7
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 3
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const v2, 0xd800

    .line 231
    iget v0, p0, Lgnu/text/Char;->value:I

    if-le v0, v2, :cond_0

    .line 233
    iget v0, p0, Lgnu/text/Char;->value:I

    const v1, 0xffff

    if-le v0, v1, :cond_1

    .line 235
    iget v0, p0, Lgnu/text/Char;->value:I

    const/high16 v1, 0x1

    sub-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0xa

    add-int/2addr v0, v2

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeChar(I)V

    .line 236
    iget v0, p0, Lgnu/text/Char;->value:I

    and-int/lit16 v0, v0, 0x3ff

    const v1, 0xdc00

    add-int/2addr v0, v1

    iput v0, p0, Lgnu/text/Char;->value:I

    .line 244
    :cond_0
    :goto_0
    iget v0, p0, Lgnu/text/Char;->value:I

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeChar(I)V

    .line 245
    return-void

    .line 238
    :cond_1
    iget v0, p0, Lgnu/text/Char;->value:I

    const v1, 0xdbff

    if-gt v0, v1, :cond_0

    .line 240
    iget v0, p0, Lgnu/text/Char;->value:I

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeChar(I)V

    .line 241
    const/4 v0, 0x0

    iput v0, p0, Lgnu/text/Char;->value:I

    goto :goto_0
.end method
