.class public Lcom/android/common/Rfc822Validator;
.super Ljava/lang/Object;
.source "Rfc822Validator.java"

# interfaces
.implements Landroid/widget/AutoCompleteTextView$Validator;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final EMAIL_ADDRESS_PATTERN:Ljava/util/regex/Pattern;


# instance fields
.field private mDomain:Ljava/lang/String;

.field private mRemoveInvalid:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    const-string v0, "[^\\s@]+@([^\\s@\\.]+\\.)+[a-zA-z][a-zA-Z][a-zA-Z]*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/common/Rfc822Validator;->EMAIL_ADDRESS_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "domain"

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/common/Rfc822Validator;->mRemoveInvalid:Z

    .line 59
    iput-object p1, p0, Lcom/android/common/Rfc822Validator;->mDomain:Ljava/lang/String;

    .line 60
    return-void
.end method

.method private removeIllegalCharacters(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "s"

    .prologue
    .line 90
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 91
    .local v3, result:Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 92
    .local v2, length:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_2

    .line 93
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 102
    .local v0, c:C
    const/16 v4, 0x20

    if-le v0, v4, :cond_0

    const/16 v4, 0x7e

    if-le v0, v4, :cond_1

    .line 92
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 106
    :cond_1
    const/16 v4, 0x28

    if-eq v0, v4, :cond_0

    const/16 v4, 0x29

    if-eq v0, v4, :cond_0

    const/16 v4, 0x3c

    if-eq v0, v4, :cond_0

    const/16 v4, 0x3e

    if-eq v0, v4, :cond_0

    const/16 v4, 0x40

    if-eq v0, v4, :cond_0

    const/16 v4, 0x2c

    if-eq v0, v4, :cond_0

    const/16 v4, 0x3b

    if-eq v0, v4, :cond_0

    const/16 v4, 0x3a

    if-eq v0, v4, :cond_0

    const/16 v4, 0x5c

    if-eq v0, v4, :cond_0

    const/16 v4, 0x22

    if-eq v0, v4, :cond_0

    const/16 v4, 0x5b

    if-eq v0, v4, :cond_0

    const/16 v4, 0x5d

    if-eq v0, v4, :cond_0

    .line 112
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 114
    .end local v0           #c:C
    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method


# virtual methods
.method public fixText(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 12
    .parameter "cs"

    .prologue
    const/4 v8, 0x0

    .line 122
    invoke-static {p1}, Landroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    move-result v9

    if-nez v9, :cond_1

    const-string v5, ""

    .line 160
    :cond_0
    return-object v5

    .line 124
    :cond_1
    invoke-static {p1}, Landroid/text/util/Rfc822Tokenizer;->tokenize(Ljava/lang/CharSequence;)[Landroid/text/util/Rfc822Token;

    move-result-object v7

    .line 125
    .local v7, tokens:[Landroid/text/util/Rfc822Token;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 127
    .local v5, sb:Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    array-length v9, v7

    if-ge v3, v9, :cond_0

    .line 128
    aget-object v9, v7, v3

    invoke-virtual {v9}, Landroid/text/util/Rfc822Token;->getAddress()Ljava/lang/String;

    move-result-object v6

    .line 130
    .local v6, text:Ljava/lang/String;
    iget-boolean v9, p0, Lcom/android/common/Rfc822Validator;->mRemoveInvalid:Z

    if-eqz v9, :cond_3

    invoke-virtual {p0, v6}, Lcom/android/common/Rfc822Validator;->isValid(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 127
    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 133
    :cond_3
    const/16 v9, 0x40

    invoke-virtual {v6, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 134
    .local v4, index:I
    if-gez v4, :cond_5

    .line 136
    iget-object v9, p0, Lcom/android/common/Rfc822Validator;->mDomain:Ljava/lang/String;

    if-eqz v9, :cond_4

    .line 137
    aget-object v9, v7, v3

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, v6}, Lcom/android/common/Rfc822Validator;->removeIllegalCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "@"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/common/Rfc822Validator;->mDomain:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/text/util/Rfc822Token;->setAddress(Ljava/lang/String;)V

    .line 154
    :cond_4
    :goto_2
    aget-object v9, v7, v3

    invoke-virtual {v9}, Landroid/text/util/Rfc822Token;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    add-int/lit8 v9, v3, 0x1

    array-length v10, v7

    if-ge v9, v10, :cond_2

    .line 156
    const-string v9, ", "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 141
    :cond_5
    invoke-virtual {v6, v8, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/common/Rfc822Validator;->removeIllegalCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 142
    .local v2, fix:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 147
    add-int/lit8 v9, v4, 0x1

    invoke-virtual {v6, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/common/Rfc822Validator;->removeIllegalCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 148
    .local v0, domain:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v9

    if-nez v9, :cond_7

    const/4 v1, 0x1

    .line 149
    .local v1, emptyDomain:Z
    :goto_3
    if-eqz v1, :cond_6

    iget-object v9, p0, Lcom/android/common/Rfc822Validator;->mDomain:Ljava/lang/String;

    if-eqz v9, :cond_4

    .line 150
    :cond_6
    aget-object v9, v7, v3

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "@"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    if-nez v1, :cond_8

    .end local v0           #domain:Ljava/lang/String;
    :goto_4
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/text/util/Rfc822Token;->setAddress(Ljava/lang/String;)V

    goto :goto_2

    .end local v1           #emptyDomain:Z
    .restart local v0       #domain:Ljava/lang/String;
    :cond_7
    move v1, v8

    .line 148
    goto :goto_3

    .line 150
    .restart local v1       #emptyDomain:Z
    :cond_8
    iget-object v0, p0, Lcom/android/common/Rfc822Validator;->mDomain:Ljava/lang/String;

    goto :goto_4
.end method

.method public isValid(Ljava/lang/CharSequence;)Z
    .locals 5
    .parameter "text"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 66
    invoke-static {p1}, Landroid/text/util/Rfc822Tokenizer;->tokenize(Ljava/lang/CharSequence;)[Landroid/text/util/Rfc822Token;

    move-result-object v0

    .line 68
    .local v0, tokens:[Landroid/text/util/Rfc822Token;
    array-length v3, v0

    if-ne v3, v1, :cond_0

    sget-object v3, Lcom/android/common/Rfc822Validator;->EMAIL_ADDRESS_PATTERN:Ljava/util/regex/Pattern;

    aget-object v4, v0, v2

    invoke-virtual {v4}, Landroid/text/util/Rfc822Token;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-eqz v3, :cond_0

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method public setRemoveInvalid(Z)V
    .locals 0
    .parameter "remove"

    .prologue
    .line 82
    iput-boolean p1, p0, Lcom/android/common/Rfc822Validator;->mRemoveInvalid:Z

    .line 83
    return-void
.end method
