.class public Lkawa/standard/define_autoload;
.super Lkawa/lang/Syntax;
.source "define_autoload.java"


# static fields
.field public static final define_autoload:Lkawa/standard/define_autoload;

.field public static final define_autoloads_from_file:Lkawa/standard/define_autoload;


# instance fields
.field fromFile:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 14
    new-instance v0, Lkawa/standard/define_autoload;

    const-string v1, "define-autoload"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lkawa/standard/define_autoload;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lkawa/standard/define_autoload;->define_autoload:Lkawa/standard/define_autoload;

    .line 16
    new-instance v0, Lkawa/standard/define_autoload;

    const-string v1, "define-autoloads-from-file"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lkawa/standard/define_autoload;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lkawa/standard/define_autoload;->define_autoloads_from_file:Lkawa/standard/define_autoload;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0
    .parameter "name"
    .parameter "fromFile"

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lkawa/lang/Syntax;-><init>(Ljava/lang/Object;)V

    .line 24
    iput-boolean p2, p0, Lkawa/standard/define_autoload;->fromFile:Z

    .line 25
    return-void
.end method

.method public static findAutoloadComments(Lgnu/kawa/lispexpr/LispReader;Ljava/lang/String;Lgnu/expr/ScopeExp;Lkawa/lang/Translator;)V
    .locals 9
    .parameter "in"
    .parameter "filename"
    .parameter "defs"
    .parameter "tr"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .prologue
    .line 143
    const/4 v1, 0x1

    .line 144
    .local v1, lineStart:Z
    const-string v5, ";;;###autoload"

    .line 145
    .local v5, magic:Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    .local v6, magicLength:I
    move v4, v1

    .line 149
    .end local v1           #lineStart:Z
    .local v4, lineStart:Z
    :goto_0
    invoke-virtual {p0}, Lgnu/kawa/lispexpr/LispReader;->peek()I

    move-result v1

    .line 150
    .local v1, ch:I
    if-gez v1, :cond_0

    move p0, v1

    .end local v1           #ch:I
    .local p0, ch:I
    move p1, v4

    .line 230
    .end local v4           #lineStart:Z
    .local p1, lineStart:Z
    :goto_1
    return-void

    .line 152
    .restart local v1       #ch:I
    .restart local v4       #lineStart:Z
    .local p0, in:Lgnu/kawa/lispexpr/LispReader;
    .local p1, filename:Ljava/lang/String;
    :cond_0
    const/16 v2, 0xa

    if-eq v1, v2, :cond_1

    const/16 v2, 0xd

    if-ne v1, v2, :cond_2

    .line 154
    :cond_1
    invoke-virtual {p0}, Lgnu/kawa/lispexpr/LispReader;->read()I

    .line 155
    const/4 v1, 0x1

    .end local v4           #lineStart:Z
    .local v1, lineStart:Z
    move v4, v1

    .line 156
    .end local v1           #lineStart:Z
    .restart local v4       #lineStart:Z
    goto :goto_0

    .line 158
    .local v1, ch:I
    :cond_2
    if-eqz v4, :cond_d

    const/16 v2, 0x3b

    if-ne v1, v2, :cond_d

    .line 160
    const/4 v2, 0x0

    .local v2, i:I
    move v3, v2

    .line 163
    .end local v2           #i:I
    .local v3, i:I
    :cond_3
    :goto_2
    if-ne v3, v6, :cond_5

    .line 177
    if-lez v3, :cond_d

    .line 179
    invoke-virtual {p0}, Lgnu/kawa/lispexpr/LispReader;->readObject()Ljava/lang/Object;

    move-result-object v1

    .line 180
    .local v1, form:Ljava/lang/Object;
    instance-of v2, v1, Lgnu/lists/Pair;

    if-eqz v2, :cond_4

    .line 182
    move-object v0, v1

    check-cast v0, Lgnu/lists/Pair;

    move-object v3, v0

    .line 183
    .local v3, pair:Lgnu/lists/Pair;
    const/4 v4, 0x0

    .line 184
    .local v4, value:Ljava/lang/Object;
    const/4 v2, 0x0

    .line 185
    .local v2, name:Ljava/lang/String;
    invoke-virtual {v3}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v1

    .line 186
    .local v1, car:Ljava/lang/Object;
    instance-of v7, v1, Ljava/lang/String;

    if-eqz v7, :cond_a

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 190
    .local v1, command:Ljava/lang/String;
    :goto_3
    const-string v7, "defun"

    if-ne v1, v7, :cond_c

    .line 192
    invoke-virtual {v3}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v1

    .end local v1           #command:Ljava/lang/String;
    check-cast v1, Lgnu/lists/Pair;

    invoke-virtual {v1}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 193
    .end local v2           #name:Ljava/lang/String;
    .local v1, name:Ljava/lang/String;
    new-instance v2, Lkawa/lang/AutoloadProcedure;

    invoke-virtual {p3}, Lkawa/lang/Translator;->getLanguage()Lgnu/expr/Language;

    move-result-object v3

    .end local v3           #pair:Lgnu/lists/Pair;
    invoke-direct {v2, v1, p1, v3}, Lkawa/lang/AutoloadProcedure;-><init>(Ljava/lang/String;Ljava/lang/String;Lgnu/expr/Language;)V

    .local v2, value:Lkawa/lang/AutoloadProcedure;
    move-object v3, v2

    .line 199
    .end local v2           #value:Lkawa/lang/AutoloadProcedure;
    .end local v4           #value:Ljava/lang/Object;
    .local v3, value:Lkawa/lang/AutoloadProcedure;
    :goto_4
    if-eqz v3, :cond_4

    .line 201
    const/16 v2, 0x77

    invoke-virtual {p2, v1, v2, p3}, Lgnu/expr/ScopeExp;->getDefine(Ljava/lang/Object;CLgnu/expr/Compilation;)Lgnu/expr/Declaration;

    move-result-object v1

    .line 202
    .local v1, decl:Lgnu/expr/Declaration;
    new-instance v2, Lgnu/expr/QuoteExp;

    invoke-direct {v2, v3}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    .line 203
    .local v2, ex:Lgnu/expr/Expression;
    const-wide/16 v3, 0x4000

    invoke-virtual {v1, v3, v4}, Lgnu/expr/Declaration;->setFlag(J)V

    .line 204
    .end local v3           #value:Lkawa/lang/AutoloadProcedure;
    invoke-virtual {v1, v2}, Lgnu/expr/Declaration;->noteValue(Lgnu/expr/Expression;)V

    .line 205
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lgnu/expr/Declaration;->setProcedureDecl(Z)V

    .line 206
    .end local v2           #ex:Lgnu/expr/Expression;
    sget-object v2, Lgnu/expr/Compilation;->typeProcedure:Lgnu/bytecode/ClassType;

    invoke-virtual {v1, v2}, Lgnu/expr/Declaration;->setType(Lgnu/bytecode/Type;)V

    .line 209
    .end local v1           #decl:Lgnu/expr/Declaration;
    :cond_4
    const/4 v1, 0x0

    .local v1, lineStart:Z
    move v4, v1

    .line 210
    .end local v1           #lineStart:Z
    .local v4, lineStart:Z
    goto :goto_0

    .line 165
    .local v1, ch:I
    .local v3, i:I
    :cond_5
    invoke-virtual {p0}, Lgnu/kawa/lispexpr/LispReader;->read()I

    move-result v1

    .line 166
    if-gez v1, :cond_6

    move p0, v1

    .end local v1           #ch:I
    .local p0, ch:I
    move p1, v4

    .line 167
    .end local v4           #lineStart:Z
    .local p1, lineStart:Z
    goto :goto_1

    .line 168
    .restart local v1       #ch:I
    .restart local v4       #lineStart:Z
    .local p0, in:Lgnu/kawa/lispexpr/LispReader;
    .local p1, filename:Ljava/lang/String;
    :cond_6
    const/16 v2, 0xa

    if-eq v1, v2, :cond_7

    const/16 v2, 0xd

    if-ne v1, v2, :cond_8

    .line 170
    :cond_7
    const/4 v1, 0x1

    .end local v4           #lineStart:Z
    .local v1, lineStart:Z
    move v4, v1

    .line 171
    .end local v1           #lineStart:Z
    .restart local v4       #lineStart:Z
    goto/16 :goto_0

    .line 173
    .local v1, ch:I
    :cond_8
    if-ltz v3, :cond_3

    add-int/lit8 v2, v3, 0x1

    .end local v3           #i:I
    .local v2, i:I
    invoke-virtual {v5, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v1, v3, :cond_9

    move v3, v2

    .line 174
    .end local v2           #i:I
    .restart local v3       #i:I
    goto :goto_2

    .line 175
    .end local v3           #i:I
    .restart local v2       #i:I
    :cond_9
    const/4 v2, -0x1

    move v3, v2

    .end local v2           #i:I
    .restart local v3       #i:I
    goto :goto_2

    .line 186
    .local v1, car:Ljava/lang/Object;
    .local v2, name:Ljava/lang/String;
    .local v3, pair:Lgnu/lists/Pair;
    .local v4, value:Ljava/lang/Object;
    :cond_a
    instance-of v7, v1, Lgnu/mapping/Symbol;

    if-eqz v7, :cond_b

    check-cast v1, Lgnu/mapping/Symbol;

    .end local v1           #car:Ljava/lang/Object;
    invoke-virtual {v1}, Lgnu/mapping/Symbol;->getName()Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    .restart local v1       #car:Ljava/lang/Object;
    :cond_b
    const/4 v1, 0x0

    goto :goto_3

    .line 197
    .local v1, command:Ljava/lang/String;
    :cond_c
    const/16 v1, 0x77

    new-instance v7, Ljava/lang/StringBuilder;

    .end local v1           #command:Ljava/lang/String;
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "unsupported ;;;###autoload followed by: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v3

    .end local v3           #pair:Lgnu/lists/Pair;
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v1, v3}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    move-object v1, v2

    .end local v2           #name:Ljava/lang/String;
    .local v1, name:Ljava/lang/String;
    move-object v3, v4

    .local v3, value:Lkawa/lang/AutoloadProcedure;
    goto :goto_4

    .line 213
    .end local v3           #value:Lkawa/lang/AutoloadProcedure;
    .local v1, ch:I
    .local v4, lineStart:Z
    :cond_d
    const/4 v2, 0x0

    .line 214
    .end local v4           #lineStart:Z
    .local v2, lineStart:Z
    invoke-virtual {p0}, Lgnu/kawa/lispexpr/LispReader;->skip()V

    .line 215
    const/16 v3, 0x23

    if-ne v1, v3, :cond_e

    .line 217
    invoke-virtual {p0}, Lgnu/kawa/lispexpr/LispReader;->peek()I

    move-result v3

    const/16 v4, 0x7c

    if-ne v3, v4, :cond_e

    .line 219
    invoke-virtual {p0}, Lgnu/kawa/lispexpr/LispReader;->skip()V

    .line 220
    const/16 v1, 0x23

    const/16 v3, 0x7c

    invoke-virtual {p0, v1, v3}, Lgnu/kawa/lispexpr/LispReader;->readNestedComment(CC)V

    .end local v1           #ch:I
    move v4, v2

    .line 221
    .end local v2           #lineStart:Z
    .restart local v4       #lineStart:Z
    goto/16 :goto_0

    .line 224
    .end local v4           #lineStart:Z
    .restart local v1       #ch:I
    .restart local v2       #lineStart:Z
    :cond_e
    int-to-char v3, v1

    invoke-static {v3}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v3

    if-eqz v3, :cond_10

    :cond_f
    move v4, v2

    .line 232
    .end local v2           #lineStart:Z
    .restart local v4       #lineStart:Z
    goto/16 :goto_0

    .line 228
    .end local v4           #lineStart:Z
    .restart local v2       #lineStart:Z
    :cond_10
    invoke-virtual {p0, v1}, Lgnu/kawa/lispexpr/LispReader;->readObject(I)Ljava/lang/Object;

    move-result-object v3

    .line 229
    .local v3, skipped:Ljava/lang/Object;
    sget-object v4, Lgnu/lists/Sequence;->eofValue:Ljava/lang/Object;

    if-ne v3, v4, :cond_f

    move p0, v1

    .end local v1           #ch:I
    .local p0, ch:I
    move p1, v2

    .line 230
    .end local v2           #lineStart:Z
    .local p1, lineStart:Z
    goto/16 :goto_1
.end method

.method public static process(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Vector;Lgnu/expr/ScopeExp;Lkawa/lang/Translator;)Z
    .locals 11
    .parameter "names"
    .parameter "filename"
    .parameter "forms"
    .parameter "defs"
    .parameter "tr"

    .prologue
    const/4 v9, 0x0

    const/4 v10, 0x1

    .line 239
    instance-of v8, p0, Lgnu/lists/Pair;

    if-eqz v8, :cond_1

    .line 241
    move-object v0, p0

    check-cast v0, Lgnu/lists/Pair;

    move-object v6, v0

    .line 242
    .local v6, p:Lgnu/lists/Pair;
    invoke-virtual {v6}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8, p1, p2, p3, p4}, Lkawa/standard/define_autoload;->process(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Vector;Lgnu/expr/ScopeExp;Lkawa/lang/Translator;)Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {v6}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8, p1, p2, p3, p4}, Lkawa/standard/define_autoload;->process(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Vector;Lgnu/expr/ScopeExp;Lkawa/lang/Translator;)Z

    move-result v8

    if-eqz v8, :cond_0

    move v8, v10

    .line 285
    .end local v6           #p:Lgnu/lists/Pair;
    .end local p1
    :goto_0
    return v8

    .restart local v6       #p:Lgnu/lists/Pair;
    .restart local p1
    :cond_0
    move v8, v9

    .line 242
    goto :goto_0

    .line 245
    .end local v6           #p:Lgnu/lists/Pair;
    :cond_1
    sget-object v8, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-ne p0, v8, :cond_2

    move v8, v10

    .line 246
    goto :goto_0

    .line 270
    :cond_2
    instance-of v8, p0, Ljava/lang/String;

    if-nez v8, :cond_3

    instance-of v8, p0, Lgnu/mapping/Symbol;

    if-eqz v8, :cond_5

    .line 272
    :cond_3
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 273
    .local v5, name:Ljava/lang/String;
    const/16 v8, 0x77

    invoke-virtual {p3, v5, v8, p4}, Lgnu/expr/ScopeExp;->getDefine(Ljava/lang/Object;CLgnu/expr/Compilation;)Lgnu/expr/Declaration;

    move-result-object v1

    .line 274
    .local v1, decl:Lgnu/expr/Declaration;
    instance-of v8, p1, Ljava/lang/String;

    if-eqz v8, :cond_4

    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    move-object v3, v0

    .local v3, fn:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    .local v4, len:I
    const/4 v8, 0x2

    if-le v4, v8, :cond_4

    invoke-virtual {v3, v9}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x3c

    if-ne v8, v9, :cond_4

    sub-int v8, v4, v10

    invoke-virtual {v3, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x3e

    if-ne v8, v9, :cond_4

    .line 277
    sub-int v8, v4, v10

    invoke-virtual {v3, v10, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 278
    .end local v3           #fn:Ljava/lang/String;
    .end local v4           #len:I
    .end local p1
    :cond_4
    new-instance v7, Lkawa/lang/AutoloadProcedure;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p4}, Lkawa/lang/Translator;->getLanguage()Lgnu/expr/Language;

    move-result-object v9

    invoke-direct {v7, v5, v8, v9}, Lkawa/lang/AutoloadProcedure;-><init>(Ljava/lang/String;Ljava/lang/String;Lgnu/expr/Language;)V

    .line 280
    .local v7, value:Lkawa/lang/AutoloadProcedure;
    new-instance v2, Lgnu/expr/QuoteExp;

    invoke-direct {v2, v7}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    .line 281
    .local v2, ex:Lgnu/expr/Expression;
    const-wide/16 v8, 0x4000

    invoke-virtual {v1, v8, v9}, Lgnu/expr/Declaration;->setFlag(J)V

    .line 282
    invoke-virtual {v1, v2}, Lgnu/expr/Declaration;->noteValue(Lgnu/expr/Expression;)V

    move v8, v10

    .line 283
    goto :goto_0

    .end local v1           #decl:Lgnu/expr/Declaration;
    .end local v2           #ex:Lgnu/expr/Expression;
    .end local v5           #name:Ljava/lang/String;
    .end local v7           #value:Lkawa/lang/AutoloadProcedure;
    .restart local p1
    :cond_5
    move v8, v9

    .line 285
    goto :goto_0
.end method


# virtual methods
.method public rewriteForm(Lgnu/lists/Pair;Lkawa/lang/Translator;)Lgnu/expr/Expression;
    .locals 1
    .parameter "form"
    .parameter "tr"

    .prologue
    .line 290
    const/4 v0, 0x0

    return-object v0
.end method

.method public scanFile(Ljava/lang/String;Lgnu/expr/ScopeExp;Lkawa/lang/Translator;)Z
    .locals 21
    .parameter "filespec"
    .parameter "defs"
    .parameter "tr"

    .prologue
    .line 70
    const-string v18, ".el"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_0

    .line 72
    :cond_0
    new-instance v10, Ljava/io/File;

    move-object v0, v10

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 73
    .local v10, file:Ljava/io/File;
    invoke-virtual {v10}, Ljava/io/File;->isAbsolute()Z

    move-result v18

    if-nez v18, :cond_1

    .line 74
    new-instance v10, Ljava/io/File;

    .end local v10           #file:Ljava/io/File;
    new-instance v18, Ljava/io/File;

    invoke-virtual/range {p3 .. p3}, Lkawa/lang/Translator;->getFileName()Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v18

    move-object v0, v10

    move-object/from16 v1, v18

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    .restart local v10       #file:Ljava/io/File;
    :cond_1
    invoke-virtual {v10}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v11

    .line 76
    .local v11, filename:Ljava/lang/String;
    const/16 v18, 0x2e

    move-object v0, v11

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v6

    .line 78
    .local v6, dot:I
    if-ltz v6, :cond_5

    .line 80
    invoke-virtual {v11, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    .line 81
    .local v8, extension:Ljava/lang/String;
    invoke-static {v8}, Lgnu/expr/Language;->getInstance(Ljava/lang/String;)Lgnu/expr/Language;

    move-result-object v13

    .line 82
    .local v13, language:Lgnu/expr/Language;
    if-nez v13, :cond_2

    .line 84
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "unknown extension for "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p3

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    .line 85
    const/16 v18, 0x1

    .line 136
    .end local v8           #extension:Ljava/lang/String;
    .end local v13           #language:Lgnu/expr/Language;
    :goto_0
    return v18

    .line 106
    .restart local v8       #extension:Ljava/lang/String;
    .restart local v13       #language:Lgnu/expr/Language;
    :cond_2
    move-object/from16 v0, p3

    iget-object v0, v0, Lkawa/lang/Translator;->classPrefix:Ljava/lang/String;

    move-object/from16 v16, v0

    .line 107
    .local v16, prefix:Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    .line 108
    .local v9, extlen:I
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v17

    .line 109
    .local v17, speclen:I
    const/16 v18, 0x0

    sub-int v19, v17, v9

    move-object/from16 v0, p1

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 110
    .local v5, cname:Ljava/lang/String;
    :goto_1
    const-string v18, "../"

    move-object v0, v5

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_4

    .line 112
    const/16 v18, 0x2e

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v19

    const/16 v20, 0x2

    sub-int v19, v19, v20

    move-object/from16 v0, v16

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v12

    .line 113
    .local v12, i:I
    if-gez v12, :cond_3

    .line 115
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "cannot use relative filename \""

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "\" with simple prefix \""

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "\""

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p3

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    .line 117
    const/16 v18, 0x0

    goto :goto_0

    .line 119
    :cond_3
    const/16 v18, 0x0

    add-int/lit8 v19, v12, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v16

    .line 120
    const/16 v18, 0x3

    move-object v0, v5

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 121
    goto :goto_1

    .line 122
    .end local v12           #i:I
    :cond_4
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x2f

    const/16 v20, 0x2e

    invoke-virtual/range {v18 .. v20}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    .line 126
    .local v4, classname:Ljava/lang/String;
    :try_start_0
    invoke-static {v11}, Lgnu/mapping/InPort;->openFile(Ljava/lang/Object;)Lgnu/mapping/InPort;

    move-result-object v15

    .line 127
    .local v15, port:Lgnu/mapping/InPort;
    invoke-virtual/range {p3 .. p3}, Lkawa/lang/Translator;->getMessages()Lgnu/text/SourceMessages;

    move-result-object v18

    move-object v0, v13

    move-object v1, v15

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lgnu/expr/Language;->getLexer(Lgnu/mapping/InPort;Lgnu/text/SourceMessages;)Lgnu/text/Lexer;

    move-result-object v14

    .line 128
    .local v14, lexer:Lgnu/text/Lexer;
    check-cast v14, Lgnu/kawa/lispexpr/LispReader;

    .end local v14           #lexer:Lgnu/text/Lexer;
    move-object v0, v14

    move-object v1, v4

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-static {v0, v1, v2, v3}, Lkawa/standard/define_autoload;->findAutoloadComments(Lgnu/kawa/lispexpr/LispReader;Ljava/lang/String;Lgnu/expr/ScopeExp;Lkawa/lang/Translator;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 136
    .end local v4           #classname:Ljava/lang/String;
    .end local v5           #cname:Ljava/lang/String;
    .end local v8           #extension:Ljava/lang/String;
    .end local v9           #extlen:I
    .end local v13           #language:Lgnu/expr/Language;
    .end local v15           #port:Lgnu/mapping/InPort;
    .end local v16           #prefix:Ljava/lang/String;
    .end local v17           #speclen:I
    :cond_5
    const/16 v18, 0x1

    goto/16 :goto_0

    .line 130
    .restart local v4       #classname:Ljava/lang/String;
    .restart local v5       #cname:Ljava/lang/String;
    .restart local v8       #extension:Ljava/lang/String;
    .restart local v9       #extlen:I
    .restart local v13       #language:Lgnu/expr/Language;
    .restart local v16       #prefix:Ljava/lang/String;
    .restart local v17       #speclen:I
    :catch_0
    move-exception v18

    move-object/from16 v7, v18

    .line 132
    .local v7, ex:Ljava/lang/Exception;
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "error reading "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ": "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p3

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    .line 133
    const/16 v18, 0x1

    goto/16 :goto_0
.end method

.method public scanForDefinitions(Lgnu/lists/Pair;Ljava/util/Vector;Lgnu/expr/ScopeExp;Lkawa/lang/Translator;)Z
    .locals 6
    .parameter "st"
    .parameter "forms"
    .parameter "defs"
    .parameter "tr"

    .prologue
    const/4 v5, 0x0

    .line 30
    invoke-virtual {p1}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Lgnu/lists/Pair;

    if-nez v4, :cond_0

    .line 31
    invoke-super {p0, p1, p2, p3, p4}, Lkawa/lang/Syntax;->scanForDefinitions(Lgnu/lists/Pair;Ljava/util/Vector;Lgnu/expr/ScopeExp;Lkawa/lang/Translator;)Z

    move-result v4

    .line 65
    :goto_0
    return v4

    .line 32
    :cond_0
    invoke-virtual {p1}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgnu/lists/Pair;

    .line 33
    .local v2, p:Lgnu/lists/Pair;
    iget-boolean v4, p0, Lkawa/standard/define_autoload;->fromFile:Z

    if-eqz v4, :cond_5

    .line 38
    :goto_1
    invoke-virtual {v2}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Ljava/lang/CharSequence;

    if-nez v4, :cond_2

    .line 53
    :cond_1
    const-string v4, "invalid syntax for define-autoloads-from-file"

    invoke-virtual {p4, v4}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move v4, v5

    .line 54
    goto :goto_0

    .line 44
    :cond_2
    invoke-virtual {v2}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4, p3, p4}, Lkawa/standard/define_autoload;->scanFile(Ljava/lang/String;Lgnu/expr/ScopeExp;Lkawa/lang/Translator;)Z

    move-result v4

    if-nez v4, :cond_3

    move v4, v5

    .line 45
    goto :goto_0

    .line 46
    :cond_3
    invoke-virtual {v2}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v3

    .line 47
    .local v3, rest:Ljava/lang/Object;
    sget-object v4, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-ne v3, v4, :cond_4

    .line 48
    const/4 v4, 0x1

    goto :goto_0

    .line 49
    :cond_4
    instance-of v4, v3, Lgnu/lists/Pair;

    if-eqz v4, :cond_1

    .line 51
    invoke-virtual {v2}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v2

    .end local v2           #p:Lgnu/lists/Pair;
    check-cast v2, Lgnu/lists/Pair;

    .line 52
    .restart local v2       #p:Lgnu/lists/Pair;
    goto :goto_1

    .line 56
    .end local v3           #rest:Ljava/lang/Object;
    :cond_5
    invoke-virtual {v2}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v1

    .line 57
    .local v1, names:Ljava/lang/Object;
    const/4 v0, 0x0

    .line 58
    .local v0, filename:Ljava/lang/Object;
    invoke-virtual {v2}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Lgnu/lists/Pair;

    if-eqz v4, :cond_6

    .line 60
    invoke-virtual {v2}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v2

    .end local v2           #p:Lgnu/lists/Pair;
    check-cast v2, Lgnu/lists/Pair;

    .line 61
    .restart local v2       #p:Lgnu/lists/Pair;
    invoke-virtual {v2}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v0

    .line 62
    invoke-static {v1, v0, p2, p3, p4}, Lkawa/standard/define_autoload;->process(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Vector;Lgnu/expr/ScopeExp;Lkawa/lang/Translator;)Z

    move-result v4

    goto :goto_0

    .line 64
    :cond_6
    const-string v4, "invalid syntax for define-autoload"

    invoke-virtual {p4, v4}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move v4, v5

    .line 65
    goto :goto_0
.end method
