.class Lcom/google/gson/ModifyFirstLetterNamingPolicy;
.super Lcom/google/gson/RecursiveFieldNamingPolicy;
.source "ModifyFirstLetterNamingPolicy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/gson/ModifyFirstLetterNamingPolicy$LetterModifier;
    }
.end annotation


# instance fields
.field private final letterModifier:Lcom/google/gson/ModifyFirstLetterNamingPolicy$LetterModifier;


# direct methods
.method public constructor <init>(Lcom/google/gson/ModifyFirstLetterNamingPolicy$LetterModifier;)V
    .locals 0
    .parameter "modifier"

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/google/gson/RecursiveFieldNamingPolicy;-><init>()V

    .line 65
    invoke-static {p1}, Lcom/google/gson/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 66
    iput-object p1, p0, Lcom/google/gson/ModifyFirstLetterNamingPolicy;->letterModifier:Lcom/google/gson/ModifyFirstLetterNamingPolicy$LetterModifier;

    .line 67
    return-void
.end method

.method private modifyString(CLjava/lang/String;I)Ljava/lang/String;
    .locals 2
    .parameter "firstCharacter"
    .parameter "srcString"
    .parameter "indexOfSubstring"

    .prologue
    .line 101
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p3, v0, :cond_0

    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2, p3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 104
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method protected translateName(Ljava/lang/String;Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Ljava/lang/String;
    .locals 7
    .parameter "target"
    .parameter "fieldType"
    .parameter "annotations"

    .prologue
    .line 71
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 72
    .local v1, fieldNameBuilder:Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .line 73
    .local v3, index:I
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 75
    .local v2, firstCharacter:C
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ge v3, v5, :cond_0

    .line 76
    invoke-static {v2}, Ljava/lang/Character;->isLetter(C)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 84
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-ne v3, v5, :cond_3

    .line 85
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 96
    .end local p1
    :cond_1
    :goto_1
    return-object p1

    .line 80
    .restart local p1
    :cond_2
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 81
    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    goto :goto_0

    .line 88
    :cond_3
    iget-object v5, p0, Lcom/google/gson/ModifyFirstLetterNamingPolicy;->letterModifier:Lcom/google/gson/ModifyFirstLetterNamingPolicy$LetterModifier;

    sget-object v6, Lcom/google/gson/ModifyFirstLetterNamingPolicy$LetterModifier;->UPPER:Lcom/google/gson/ModifyFirstLetterNamingPolicy$LetterModifier;

    if-ne v5, v6, :cond_4

    const/4 v0, 0x1

    .line 89
    .local v0, capitalizeFirstLetter:Z
    :goto_2
    if-eqz v0, :cond_5

    invoke-static {v2}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v5

    if-nez v5, :cond_5

    .line 90
    invoke-static {v2}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v5

    add-int/lit8 v3, v3, 0x1

    invoke-direct {p0, v5, p1, v3}, Lcom/google/gson/ModifyFirstLetterNamingPolicy;->modifyString(CLjava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .line 91
    .local v4, modifiedTarget:Ljava/lang/String;
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 88
    .end local v0           #capitalizeFirstLetter:Z
    .end local v4           #modifiedTarget:Ljava/lang/String;
    :cond_4
    const/4 v0, 0x0

    goto :goto_2

    .line 92
    .restart local v0       #capitalizeFirstLetter:Z
    :cond_5
    if-nez v0, :cond_1

    invoke-static {v2}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 93
    invoke-static {v2}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v5

    add-int/lit8 v3, v3, 0x1

    invoke-direct {p0, v5, p1, v3}, Lcom/google/gson/ModifyFirstLetterNamingPolicy;->modifyString(CLjava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .line 94
    .restart local v4       #modifiedTarget:Ljava/lang/String;
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1
.end method
