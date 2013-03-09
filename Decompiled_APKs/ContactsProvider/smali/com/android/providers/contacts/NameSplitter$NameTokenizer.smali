.class Lcom/android/providers/contacts/NameSplitter$NameTokenizer;
.super Ljava/util/StringTokenizer;
.source "NameSplitter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/contacts/NameSplitter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NameTokenizer"
.end annotation


# instance fields
.field private mCommaBitmask:I

.field private mDotBitmask:I

.field private mEndPointer:I

.field private mStartPointer:I

.field private final mTokens:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 7
    .parameter "fullName"

    .prologue
    const/16 v6, 0xa

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 226
    const-string v2, " .,"

    invoke-direct {p0, p1, v2, v5}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 228
    new-array v2, v6, [Ljava/lang/String;

    iput-object v2, p0, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->mTokens:[Ljava/lang/String;

    .line 232
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->hasMoreTokens()Z

    move-result v2

    if-eqz v2, :cond_4

    iget v2, p0, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->mEndPointer:I

    if-ge v2, v6, :cond_4

    .line 233
    invoke-virtual {p0}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    .line 234
    .local v1, token:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 235
    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 236
    .local v0, c:C
    const/16 v2, 0x20

    if-eq v0, v2, :cond_0

    .line 241
    .end local v0           #c:C
    :cond_1
    iget v2, p0, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->mEndPointer:I

    if-lez v2, :cond_2

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2e

    if-ne v2, v3, :cond_2

    .line 242
    iget v2, p0, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->mDotBitmask:I

    iget v3, p0, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->mEndPointer:I

    add-int/lit8 v3, v3, -0x1

    shl-int v3, v5, v3

    or-int/2addr v2, v3

    iput v2, p0, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->mDotBitmask:I

    goto :goto_0

    .line 243
    :cond_2
    iget v2, p0, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->mEndPointer:I

    if-lez v2, :cond_3

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2c

    if-ne v2, v3, :cond_3

    .line 244
    iget v2, p0, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->mCommaBitmask:I

    iget v3, p0, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->mEndPointer:I

    add-int/lit8 v3, v3, -0x1

    shl-int v3, v5, v3

    or-int/2addr v2, v3

    iput v2, p0, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->mCommaBitmask:I

    goto :goto_0

    .line 246
    :cond_3
    iget-object v2, p0, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->mTokens:[Ljava/lang/String;

    iget v3, p0, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->mEndPointer:I

    aput-object v1, v2, v3

    .line 247
    iget v2, p0, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->mEndPointer:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->mEndPointer:I

    goto :goto_0

    .line 250
    .end local v1           #token:Ljava/lang/String;
    :cond_4
    return-void
.end method

.method static synthetic access$000(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 218
    iget v0, p0, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->mStartPointer:I

    return v0
.end method

.method static synthetic access$008(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 218
    iget v0, p0, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->mStartPointer:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->mStartPointer:I

    return v0
.end method

.method static synthetic access$012(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 218
    iget v0, p0, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->mStartPointer:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->mStartPointer:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 218
    iget v0, p0, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->mEndPointer:I

    return v0
.end method

.method static synthetic access$102(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 218
    iput p1, p0, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->mEndPointer:I

    return p1
.end method

.method static synthetic access$110(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 218
    iget v0, p0, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->mEndPointer:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->mEndPointer:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)[Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 218
    iget-object v0, p0, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->mTokens:[Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public hasComma(I)Z
    .locals 3
    .parameter "index"

    .prologue
    const/4 v0, 0x1

    .line 263
    iget v1, p0, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->mCommaBitmask:I

    shl-int v2, v0, p1

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasDot(I)Z
    .locals 3
    .parameter "index"

    .prologue
    const/4 v0, 0x1

    .line 256
    iget v1, p0, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->mDotBitmask:I

    shl-int v2, v0, p1

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
