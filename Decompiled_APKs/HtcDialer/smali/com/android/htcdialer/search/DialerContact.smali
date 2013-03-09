.class public Lcom/android/htcdialer/search/DialerContact;
.super Ljava/lang/Object;
.source "DialerContact.java"


# static fields
.field private static final NAME_SEPARATORS:Ljava/lang/String; = " ()-.,;_/{}"


# instance fields
.field public callLog:Lcom/android/htcdialer/search/DialerCallLog;

.field public id:J

.field public isFavorite:Z

.field public isMaster:Z

.field public isMyPhonebook:Z

.field public isSimContact:Z

.field public mSendToVoicemail:I

.field public mVip:I

.field public name:Ljava/lang/String;

.field public nameCandidate:[I

.field public namePattern:Ljava/lang/String;

.field public namePosition:[I

.field public phones:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/htcdialer/search/DialerPhone;",
            ">;"
        }
    .end annotation
.end field

.field public photoId:J

.field public ringTonePath:Ljava/lang/String;

.field public sectionIndex:I

.field public source_id:J


# direct methods
.method public constructor <init>(JLjava/lang/String;JZZZ)V
    .locals 7
    .parameter "id"
    .parameter "name"
    .parameter "photoId"
    .parameter "isSimContact"
    .parameter "isFavorite"
    .parameter "isMyPhonebook"

    .prologue
    const-wide/16 v5, 0x0

    const/4 v0, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 144
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-wide v5, p0, Lcom/android/htcdialer/search/DialerContact;->id:J

    .line 50
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/android/htcdialer/search/DialerContact;->source_id:J

    .line 55
    iput-object v3, p0, Lcom/android/htcdialer/search/DialerContact;->name:Ljava/lang/String;

    .line 60
    iput-object v3, p0, Lcom/android/htcdialer/search/DialerContact;->namePattern:Ljava/lang/String;

    .line 65
    iput-object v3, p0, Lcom/android/htcdialer/search/DialerContact;->nameCandidate:[I

    .line 70
    iput-object v3, p0, Lcom/android/htcdialer/search/DialerContact;->phones:Ljava/util/ArrayList;

    .line 75
    iput-wide v5, p0, Lcom/android/htcdialer/search/DialerContact;->photoId:J

    .line 80
    iput-boolean v4, p0, Lcom/android/htcdialer/search/DialerContact;->isSimContact:Z

    .line 85
    iput-boolean v4, p0, Lcom/android/htcdialer/search/DialerContact;->isMyPhonebook:Z

    .line 90
    iput-boolean v0, p0, Lcom/android/htcdialer/search/DialerContact;->isMaster:Z

    .line 95
    iput-boolean v4, p0, Lcom/android/htcdialer/search/DialerContact;->isFavorite:Z

    .line 98
    iput-object v3, p0, Lcom/android/htcdialer/search/DialerContact;->ringTonePath:Ljava/lang/String;

    .line 99
    iput v4, p0, Lcom/android/htcdialer/search/DialerContact;->mSendToVoicemail:I

    .line 102
    iput-object v3, p0, Lcom/android/htcdialer/search/DialerContact;->callLog:Lcom/android/htcdialer/search/DialerCallLog;

    .line 104
    iput-object v3, p0, Lcom/android/htcdialer/search/DialerContact;->namePosition:[I

    .line 108
    iput v4, p0, Lcom/android/htcdialer/search/DialerContact;->mVip:I

    .line 112
    sget v1, Lcom/android/htcdialer/search/DialerIndexer;->INDEX_ANONYMOUS:I

    iput v1, p0, Lcom/android/htcdialer/search/DialerContact;->sectionIndex:I

    .line 145
    iput-wide p1, p0, Lcom/android/htcdialer/search/DialerContact;->id:J

    .line 146
    iput-object p3, p0, Lcom/android/htcdialer/search/DialerContact;->name:Ljava/lang/String;

    .line 147
    iput-object p3, p0, Lcom/android/htcdialer/search/DialerContact;->namePattern:Ljava/lang/String;

    .line 148
    invoke-direct {p0, p3}, Lcom/android/htcdialer/search/DialerContact;->getNameCandidate(Ljava/lang/String;)[I

    move-result-object v1

    iput-object v1, p0, Lcom/android/htcdialer/search/DialerContact;->nameCandidate:[I

    .line 149
    iput-wide p4, p0, Lcom/android/htcdialer/search/DialerContact;->photoId:J

    .line 150
    iput-boolean p6, p0, Lcom/android/htcdialer/search/DialerContact;->isSimContact:Z

    .line 151
    iput-boolean p7, p0, Lcom/android/htcdialer/search/DialerContact;->isFavorite:Z

    .line 152
    invoke-direct {p0, p3}, Lcom/android/htcdialer/search/DialerContact;->getNamePosition(Ljava/lang/String;)[I

    move-result-object v1

    iput-object v1, p0, Lcom/android/htcdialer/search/DialerContact;->namePosition:[I

    .line 153
    iput-boolean p8, p0, Lcom/android/htcdialer/search/DialerContact;->isMyPhonebook:Z

    .line 154
    if-eqz p7, :cond_0

    :goto_0
    iput v0, p0, Lcom/android/htcdialer/search/DialerContact;->sectionIndex:I

    .line 155
    return-void

    .line 154
    :cond_0
    invoke-static {p3}, Lcom/android/htcdialer/search/DialerContact;->getSectionIndex(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;JZZZZ)V
    .locals 2
    .parameter "id"
    .parameter "name"
    .parameter "namePattern"
    .parameter
    .parameter "photoId"
    .parameter "isSimContact"
    .parameter "isMaster"
    .parameter "isFavorite"
    .parameter "isMyPhonebook"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/htcdialer/search/DialerPhone;",
            ">;JZZZZ)V"
        }
    .end annotation

    .prologue
    .line 129
    .local p5, phones:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htcdialer/search/DialerPhone;>;"
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/htcdialer/search/DialerContact;->id:J

    .line 50
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/htcdialer/search/DialerContact;->source_id:J

    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/htcdialer/search/DialerContact;->name:Ljava/lang/String;

    .line 60
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/htcdialer/search/DialerContact;->namePattern:Ljava/lang/String;

    .line 65
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/htcdialer/search/DialerContact;->nameCandidate:[I

    .line 70
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/htcdialer/search/DialerContact;->phones:Ljava/util/ArrayList;

    .line 75
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/htcdialer/search/DialerContact;->photoId:J

    .line 80
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/htcdialer/search/DialerContact;->isSimContact:Z

    .line 85
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/htcdialer/search/DialerContact;->isMyPhonebook:Z

    .line 90
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/htcdialer/search/DialerContact;->isMaster:Z

    .line 95
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/htcdialer/search/DialerContact;->isFavorite:Z

    .line 98
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/htcdialer/search/DialerContact;->ringTonePath:Ljava/lang/String;

    .line 99
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/htcdialer/search/DialerContact;->mSendToVoicemail:I

    .line 102
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/htcdialer/search/DialerContact;->callLog:Lcom/android/htcdialer/search/DialerCallLog;

    .line 104
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/htcdialer/search/DialerContact;->namePosition:[I

    .line 108
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/htcdialer/search/DialerContact;->mVip:I

    .line 112
    sget v0, Lcom/android/htcdialer/search/DialerIndexer;->INDEX_ANONYMOUS:I

    iput v0, p0, Lcom/android/htcdialer/search/DialerContact;->sectionIndex:I

    .line 130
    iput-wide p1, p0, Lcom/android/htcdialer/search/DialerContact;->id:J

    .line 131
    iput-object p3, p0, Lcom/android/htcdialer/search/DialerContact;->name:Ljava/lang/String;

    .line 132
    iput-object p4, p0, Lcom/android/htcdialer/search/DialerContact;->namePattern:Ljava/lang/String;

    .line 133
    invoke-direct {p0, p4}, Lcom/android/htcdialer/search/DialerContact;->getNameCandidate(Ljava/lang/String;)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/htcdialer/search/DialerContact;->nameCandidate:[I

    .line 134
    iput-object p5, p0, Lcom/android/htcdialer/search/DialerContact;->phones:Ljava/util/ArrayList;

    .line 135
    iput-wide p6, p0, Lcom/android/htcdialer/search/DialerContact;->photoId:J

    .line 136
    iput-boolean p8, p0, Lcom/android/htcdialer/search/DialerContact;->isSimContact:Z

    .line 137
    iput-boolean p9, p0, Lcom/android/htcdialer/search/DialerContact;->isMaster:Z

    .line 138
    iput-boolean p10, p0, Lcom/android/htcdialer/search/DialerContact;->isFavorite:Z

    .line 139
    invoke-direct {p0, p3}, Lcom/android/htcdialer/search/DialerContact;->getNamePosition(Ljava/lang/String;)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/htcdialer/search/DialerContact;->namePosition:[I

    .line 140
    iput-boolean p11, p0, Lcom/android/htcdialer/search/DialerContact;->isMyPhonebook:Z

    .line 141
    return-void
.end method

.method public static final compare(Lcom/android/htcdialer/search/DialerContact;Lcom/android/htcdialer/search/DialerContact;)I
    .locals 2
    .parameter "c1"
    .parameter "c2"

    .prologue
    .line 260
    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    .line 261
    iget v0, p0, Lcom/android/htcdialer/search/DialerContact;->sectionIndex:I

    iget v1, p1, Lcom/android/htcdialer/search/DialerContact;->sectionIndex:I

    if-ne v0, v1, :cond_0

    .line 262
    iget-object v0, p0, Lcom/android/htcdialer/search/DialerContact;->name:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/htcdialer/search/DialerContact;->extractSortKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/android/htcdialer/search/DialerContact;->name:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/htcdialer/search/DialerContact;->extractSortKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    .line 271
    :goto_0
    return v0

    .line 264
    :cond_0
    iget v0, p0, Lcom/android/htcdialer/search/DialerContact;->sectionIndex:I

    iget v1, p1, Lcom/android/htcdialer/search/DialerContact;->sectionIndex:I

    sub-int/2addr v0, v1

    goto :goto_0

    .line 271
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static final extractSortKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "source"

    .prologue
    .line 275
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-static {p0}, Lcom/htc/util/contacts/ContactsUtility;->isContainCJKWord(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 276
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 277
    .local v0, buf:Ljava/lang/StringBuffer;
    invoke-static {}, Lcom/android/htcdialer/HanziToPinyin;->getInstance()Lcom/android/htcdialer/HanziToPinyin;

    move-result-object v4

    invoke-virtual {v4, p0}, Lcom/android/htcdialer/HanziToPinyin;->get(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 278
    .local v3, tokens:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htcdialer/HanziToPinyin$Token;>;"
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 279
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/htcdialer/HanziToPinyin$Token;

    .line 280
    .local v2, token:Lcom/android/htcdialer/HanziToPinyin$Token;
    iget-object v4, v2, Lcom/android/htcdialer/HanziToPinyin$Token;->target:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 282
    .end local v2           #token:Lcom/android/htcdialer/HanziToPinyin$Token;
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    .line 285
    .end local v0           #buf:Ljava/lang/StringBuffer;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v3           #tokens:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htcdialer/HanziToPinyin$Token;>;"
    .end local p0
    :cond_1
    :goto_1
    return-object p0

    .restart local p0
    :cond_2
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string p0, ""

    goto :goto_1
.end method

.method private getNameCandidate(Ljava/lang/String;)[I
    .locals 10
    .parameter "namePattern"

    .prologue
    const/16 v9, 0x3100

    const/16 v8, 0x20

    .line 173
    if-eqz p1, :cond_9

    .line 174
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 175
    .local v3, len:I
    if-lez v3, :cond_9

    .line 176
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 177
    .local v5, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v3, :cond_8

    .line 178
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 179
    .local v0, curChar:C
    if-nez v1, :cond_1

    if-eq v0, v9, :cond_1

    if-eq v0, v8, :cond_1

    .line 181
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 177
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 182
    :cond_1
    if-lez v1, :cond_0

    .line 183
    add-int/lit8 v7, v1, -0x1

    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 184
    .local v4, preChar:C
    invoke-static {v0}, Lcom/android/htcdialer/search/SmartKeyMapping;->isUppercaseCharEnUs(C)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-static {v4}, Lcom/android/htcdialer/search/SmartKeyMapping;->isUppercaseCharEnUs(C)Z

    move-result v7

    if-eqz v7, :cond_7

    :cond_2
    invoke-static {v0}, Lcom/android/htcdialer/search/SmartKeyMapping;->isUppercaseCharEnGr(C)Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-static {v4}, Lcom/android/htcdialer/search/SmartKeyMapping;->isUppercaseCharEnGr(C)Z

    move-result v7

    if-eqz v7, :cond_7

    :cond_3
    invoke-static {v0}, Lcom/android/htcdialer/search/SmartKeyMapping;->isUppercaseCharRuRu(C)Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-static {v4}, Lcom/android/htcdialer/search/SmartKeyMapping;->isUppercaseCharRuRu(C)Z

    move-result v7

    if-eqz v7, :cond_7

    :cond_4
    invoke-static {v0}, Lcom/android/htcdialer/search/SmartKeyMapping;->isNumberChar(C)Z

    move-result v7

    if-nez v7, :cond_5

    invoke-static {v0}, Lcom/android/htcdialer/search/SmartKeyMapping;->isLowercaseCharEnUs(C)Z

    move-result v7

    if-nez v7, :cond_5

    invoke-static {v0}, Lcom/android/htcdialer/search/SmartKeyMapping;->isLowercaseCharEnGr(C)Z

    move-result v7

    if-nez v7, :cond_5

    invoke-static {v0}, Lcom/android/htcdialer/search/SmartKeyMapping;->isLowercaseCharRuRu(C)Z

    move-result v7

    if-eqz v7, :cond_6

    :cond_5
    invoke-static {v4}, Lcom/android/htcdialer/search/SmartKeyMapping;->isSeperatorChar(C)Z

    move-result v7

    if-nez v7, :cond_7

    :cond_6
    if-eq v4, v9, :cond_7

    if-ne v4, v8, :cond_0

    invoke-static {v0}, Lcom/android/htcdialer/search/SmartKeyMapping;->isSymbolicChar(C)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 192
    :cond_7
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 196
    .end local v0           #curChar:C
    .end local v4           #preChar:C
    :cond_8
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 197
    .local v6, size:I
    if-lez v6, :cond_9

    .line 198
    new-array v2, v6, [I

    .line 199
    .local v2, intArray:[I
    const/4 v1, 0x0

    :goto_2
    if-ge v1, v6, :cond_a

    .line 200
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    aput v7, v2, v1

    .line 199
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 207
    .end local v1           #i:I
    .end local v2           #intArray:[I
    .end local v3           #len:I
    .end local v5           #result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v6           #size:I
    :cond_9
    const/4 v2, 0x0

    :cond_a
    return-object v2
.end method

.method private getNamePosition(Ljava/lang/String;)[I
    .locals 8
    .parameter "name"

    .prologue
    const/4 v3, 0x0

    .line 224
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 254
    :cond_0
    return-object v3

    .line 227
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    .line 228
    .local v4, len:I
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 230
    .local v5, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    .line 231
    .local v1, findStart:Z
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v4, :cond_4

    .line 232
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 234
    .local v0, c:C
    const-string v7, " ()-.,;_/{}"

    invoke-virtual {v7, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    if-ltz v7, :cond_3

    .line 235
    const/4 v1, 0x0

    .line 231
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 239
    :cond_3
    if-nez v1, :cond_2

    .line 240
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 241
    const/4 v1, 0x1

    goto :goto_1

    .line 245
    .end local v0           #c:C
    :cond_4
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 246
    .local v6, size:I
    if-lez v6, :cond_0

    .line 247
    new-array v3, v6, [I

    .line 248
    .local v3, intArray:[I
    const/4 v2, 0x0

    :goto_2
    if-ge v2, v6, :cond_0

    .line 249
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    aput v7, v3, v2

    .line 248
    add-int/lit8 v2, v2, 0x1

    goto :goto_2
.end method

.method public static final getSectionIndex(Ljava/lang/String;)I
    .locals 6
    .parameter "string"

    .prologue
    const/4 v5, 0x0

    .line 289
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 290
    sget v3, Lcom/android/htcdialer/search/DialerIndexer;->INDEX_ANONYMOUS:I

    .line 310
    :goto_0
    return v3

    .line 292
    :cond_0
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lcom/android/htcdialer/search/SmartKeyMapping;->toUpperCaseCharacter(C)C

    move-result v0

    .line 293
    .local v0, firstChar:C
    invoke-static {v0}, Lcom/android/htcdialer/search/SmartKeyMapping;->isCJKCharacter(C)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 294
    invoke-static {}, Lcom/android/htcdialer/HanziToPinyin;->getInstance()Lcom/android/htcdialer/HanziToPinyin;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/htcdialer/HanziToPinyin;->get(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 295
    .local v2, tokens:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htcdialer/HanziToPinyin$Token;>;"
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 296
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/htcdialer/HanziToPinyin$Token;

    .line 297
    .local v1, token:Lcom/android/htcdialer/HanziToPinyin$Token;
    const/4 v3, 0x2

    iget v4, v1, Lcom/android/htcdialer/HanziToPinyin$Token;->type:I

    if-ne v3, v4, :cond_1

    .line 298
    iget-object v3, v1, Lcom/android/htcdialer/HanziToPinyin$Token;->target:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lcom/android/htcdialer/search/SmartKeyMapping;->toUpperCaseCharacter(C)C

    move-result v0

    .line 301
    .end local v1           #token:Lcom/android/htcdialer/HanziToPinyin$Token;
    :cond_1
    invoke-static {v0}, Lcom/android/htcdialer/search/SmartKeyMapping;->isUppercaseCharEnUs(C)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 302
    add-int/lit8 v3, v0, -0x41

    sget v4, Lcom/android/htcdialer/search/DialerIndexer;->INDEX_CONTACT_A:I

    add-int/2addr v3, v4

    goto :goto_0

    .line 304
    :cond_2
    sget v3, Lcom/android/htcdialer/search/DialerIndexer;->INDEX_CONTACT_Z:I

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 307
    .end local v2           #tokens:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htcdialer/HanziToPinyin$Token;>;"
    :cond_3
    invoke-static {v0}, Lcom/android/htcdialer/search/SmartKeyMapping;->isUppercaseCharEnUs(C)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 308
    add-int/lit8 v3, v0, -0x41

    sget v4, Lcom/android/htcdialer/search/DialerIndexer;->INDEX_CONTACT_A:I

    add-int/2addr v3, v4

    goto :goto_0

    .line 310
    :cond_4
    sget v3, Lcom/android/htcdialer/search/DialerIndexer;->INDEX_ANONYMOUS:I

    goto :goto_0
.end method


# virtual methods
.method public addPhone(Lcom/android/htcdialer/search/DialerPhone;Z)Z
    .locals 2
    .parameter "phone"
    .parameter "isSuperPrimary"

    .prologue
    .line 211
    iget-object v0, p0, Lcom/android/htcdialer/search/DialerContact;->phones:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 212
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/htcdialer/search/DialerContact;->phones:Ljava/util/ArrayList;

    .line 214
    :cond_0
    if-eqz p2, :cond_1

    .line 215
    iget-object v0, p0, Lcom/android/htcdialer/search/DialerContact;->phones:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 216
    const/4 v0, 0x1

    .line 218
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/android/htcdialer/search/DialerContact;->phones:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public setCallLog(Lcom/android/htcdialer/search/DialerCallLog;)V
    .locals 5
    .parameter "callLog"

    .prologue
    .line 163
    iget-object v1, p0, Lcom/android/htcdialer/search/DialerContact;->callLog:Lcom/android/htcdialer/search/DialerCallLog;

    if-nez v1, :cond_1

    .line 164
    iput-object p1, p0, Lcom/android/htcdialer/search/DialerContact;->callLog:Lcom/android/htcdialer/search/DialerCallLog;

    .line 170
    :cond_0
    :goto_0
    return-void

    .line 165
    :cond_1
    iget-wide v1, p1, Lcom/android/htcdialer/search/DialerCallLog;->date:J

    iget-object v3, p0, Lcom/android/htcdialer/search/DialerContact;->callLog:Lcom/android/htcdialer/search/DialerCallLog;

    iget-wide v3, v3, Lcom/android/htcdialer/search/DialerCallLog;->date:J

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    .line 166
    iget-object v1, p0, Lcom/android/htcdialer/search/DialerContact;->callLog:Lcom/android/htcdialer/search/DialerCallLog;

    iget v0, v1, Lcom/android/htcdialer/search/DialerCallLog;->count:I

    .line 167
    .local v0, count:I
    iput-object p1, p0, Lcom/android/htcdialer/search/DialerContact;->callLog:Lcom/android/htcdialer/search/DialerCallLog;

    .line 168
    iget-object v1, p0, Lcom/android/htcdialer/search/DialerContact;->callLog:Lcom/android/htcdialer/search/DialerCallLog;

    iget v2, v1, Lcom/android/htcdialer/search/DialerCallLog;->count:I

    add-int/2addr v2, v0

    iput v2, v1, Lcom/android/htcdialer/search/DialerCallLog;->count:I

    goto :goto_0
.end method

.method public setNamePattern(Ljava/lang/String;)V
    .locals 1
    .parameter "namePattern"

    .prologue
    .line 158
    iput-object p1, p0, Lcom/android/htcdialer/search/DialerContact;->namePattern:Ljava/lang/String;

    .line 159
    invoke-direct {p0, p1}, Lcom/android/htcdialer/search/DialerContact;->getNameCandidate(Ljava/lang/String;)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/htcdialer/search/DialerContact;->nameCandidate:[I

    .line 160
    return-void
.end method
