.class public Lcom/google/android/marvin/utils/WebContentHandler;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "WebContentHandler.java"


# instance fields
.field private final mAriaRoleToDesc:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mInputTypeToDesc:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mOutputBuilder:Ljava/lang/StringBuilder;

.field private mPostorderTextStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mTagToDesc:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 65
    .local p1, htmlInputMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p2, htmlRoleMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p3, htmlTagMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 67
    iput-object p1, p0, Lcom/google/android/marvin/utils/WebContentHandler;->mInputTypeToDesc:Ljava/util/Map;

    .line 68
    iput-object p2, p0, Lcom/google/android/marvin/utils/WebContentHandler;->mAriaRoleToDesc:Ljava/util/Map;

    .line 69
    iput-object p3, p0, Lcom/google/android/marvin/utils/WebContentHandler;->mTagToDesc:Ljava/util/Map;

    .line 70
    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 1
    .parameter "ch"
    .parameter "start"
    .parameter "length"

    .prologue
    .line 149
    iget-object v0, p0, Lcom/google/android/marvin/utils/WebContentHandler;->mOutputBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 150
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "uri"
    .parameter "localName"
    .parameter "name"

    .prologue
    .line 158
    iget-object v1, p0, Lcom/google/android/marvin/utils/WebContentHandler;->mPostorderTextStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 160
    .local v0, postorderText:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 161
    invoke-virtual {p0}, Lcom/google/android/marvin/utils/WebContentHandler;->fixWhiteSpace()V

    .line 164
    :cond_0
    iget-object v1, p0, Lcom/google/android/marvin/utils/WebContentHandler;->mOutputBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    return-void
.end method

.method public fixWhiteSpace()V
    .locals 4

    .prologue
    .line 172
    iget-object v2, p0, Lcom/google/android/marvin/utils/WebContentHandler;->mOutputBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .line 174
    .local v0, index:I
    if-ltz v0, :cond_0

    .line 175
    iget-object v2, p0, Lcom/google/android/marvin/utils/WebContentHandler;->mOutputBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v1

    .line 177
    .local v1, lastCharacter:C
    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v2

    if-nez v2, :cond_0

    .line 178
    iget-object v2, p0, Lcom/google/android/marvin/utils/WebContentHandler;->mOutputBuilder:Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    .end local v1           #lastCharacter:C
    :cond_0
    return-void
.end method

.method public getOutput()Ljava/lang/String;
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/google/android/marvin/utils/WebContentHandler;->mOutputBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public startDocument()V
    .locals 1

    .prologue
    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/google/android/marvin/utils/WebContentHandler;->mOutputBuilder:Ljava/lang/StringBuilder;

    .line 75
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/google/android/marvin/utils/WebContentHandler;->mPostorderTextStack:Ljava/util/Stack;

    .line 76
    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 13
    .parameter "uri"
    .parameter "localName"
    .parameter "name"
    .parameter "attributes"

    .prologue
    .line 85
    invoke-virtual {p0}, Lcom/google/android/marvin/utils/WebContentHandler;->fixWhiteSpace()V

    .line 86
    const-string v11, "aria-label"

    move-object/from16 v0, p4

    invoke-interface {v0, v11}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 87
    .local v2, ariaLabel:Ljava/lang/String;
    const-string v11, "alt"

    move-object/from16 v0, p4

    invoke-interface {v0, v11}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 88
    .local v1, alt:Ljava/lang/String;
    const-string v11, "title"

    move-object/from16 v0, p4

    invoke-interface {v0, v11}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 90
    .local v7, title:Ljava/lang/String;
    if-eqz v2, :cond_3

    .line 91
    iget-object v11, p0, Lcom/google/android/marvin/utils/WebContentHandler;->mOutputBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    :cond_0
    :goto_0
    const-string v11, "role"

    move-object/from16 v0, p4

    invoke-interface {v0, v11}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 104
    .local v4, role:Ljava/lang/String;
    iget-object v11, p0, Lcom/google/android/marvin/utils/WebContentHandler;->mAriaRoleToDesc:Ljava/util/Map;

    invoke-interface {v11, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 105
    .local v5, roleName:Ljava/lang/String;
    const-string v11, "type"

    move-object/from16 v0, p4

    invoke-interface {v0, v11}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 106
    .local v8, type:Ljava/lang/String;
    iget-object v11, p0, Lcom/google/android/marvin/utils/WebContentHandler;->mTagToDesc:Ljava/util/Map;

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 108
    .local v6, tagInfo:Ljava/lang/String;
    if-eqz v5, :cond_5

    .line 109
    iget-object v11, p0, Lcom/google/android/marvin/utils/WebContentHandler;->mPostorderTextStack:Ljava/util/Stack;

    invoke-virtual {v11, v5}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    :goto_1
    const-string v11, "value"

    move-object/from16 v0, p4

    invoke-interface {v0, v11}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 130
    .local v10, value:Ljava/lang/String;
    if-eqz v10, :cond_2

    .line 131
    move-object/from16 v3, p3

    .line 133
    .local v3, elementType:Ljava/lang/String;
    const-string v11, "input"

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1

    if-eqz v8, :cond_1

    .line 134
    move-object v3, v8

    .line 137
    :cond_1
    const-string v11, "checkbox"

    invoke-virtual {v3, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_2

    const-string v11, "radio"

    invoke-virtual {v3, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_2

    .line 138
    invoke-virtual {p0}, Lcom/google/android/marvin/utils/WebContentHandler;->fixWhiteSpace()V

    .line 139
    iget-object v11, p0, Lcom/google/android/marvin/utils/WebContentHandler;->mOutputBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    .end local v3           #elementType:Ljava/lang/String;
    :cond_2
    return-void

    .line 92
    .end local v4           #role:Ljava/lang/String;
    .end local v5           #roleName:Ljava/lang/String;
    .end local v6           #tagInfo:Ljava/lang/String;
    .end local v8           #type:Ljava/lang/String;
    .end local v10           #value:Ljava/lang/String;
    :cond_3
    if-eqz v1, :cond_4

    .line 93
    iget-object v11, p0, Lcom/google/android/marvin/utils/WebContentHandler;->mOutputBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 94
    :cond_4
    if-eqz v7, :cond_0

    .line 95
    iget-object v11, p0, Lcom/google/android/marvin/utils/WebContentHandler;->mOutputBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 110
    .restart local v4       #role:Ljava/lang/String;
    .restart local v5       #roleName:Ljava/lang/String;
    .restart local v6       #tagInfo:Ljava/lang/String;
    .restart local v8       #type:Ljava/lang/String;
    :cond_5
    const-string v11, "input"

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_7

    if-eqz v8, :cond_7

    .line 111
    iget-object v11, p0, Lcom/google/android/marvin/utils/WebContentHandler;->mInputTypeToDesc:Ljava/util/Map;

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 113
    .local v9, typeInfo:Ljava/lang/String;
    if-eqz v9, :cond_6

    .line 114
    iget-object v11, p0, Lcom/google/android/marvin/utils/WebContentHandler;->mPostorderTextStack:Ljava/util/Stack;

    invoke-virtual {v11, v9}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 116
    :cond_6
    iget-object v11, p0, Lcom/google/android/marvin/utils/WebContentHandler;->mPostorderTextStack:Ljava/util/Stack;

    const-string v12, ""

    invoke-virtual {v11, v12}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 118
    .end local v9           #typeInfo:Ljava/lang/String;
    :cond_7
    if-eqz v6, :cond_8

    .line 119
    iget-object v11, p0, Lcom/google/android/marvin/utils/WebContentHandler;->mPostorderTextStack:Ljava/util/Stack;

    invoke-virtual {v11, v6}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 121
    :cond_8
    iget-object v11, p0, Lcom/google/android/marvin/utils/WebContentHandler;->mPostorderTextStack:Ljava/util/Stack;

    const-string v12, ""

    invoke-virtual {v11, v12}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method
