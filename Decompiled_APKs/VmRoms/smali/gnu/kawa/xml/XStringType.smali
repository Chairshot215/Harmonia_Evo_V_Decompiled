.class public Lgnu/kawa/xml/XStringType;
.super Lgnu/kawa/xml/XDataType;
.source "XStringType.java"


# static fields
.field public static final ENTITYType:Lgnu/kawa/xml/XStringType;

.field public static final IDREFType:Lgnu/kawa/xml/XStringType;

.field public static final IDType:Lgnu/kawa/xml/XStringType;

.field public static final NCNameType:Lgnu/kawa/xml/XStringType;

.field public static final NMTOKENType:Lgnu/kawa/xml/XStringType;

.field public static final NameType:Lgnu/kawa/xml/XStringType;

.field static XStringType:Lgnu/bytecode/ClassType;

.field public static final languageType:Lgnu/kawa/xml/XStringType;

.field public static final normalizedStringType:Lgnu/kawa/xml/XStringType;

.field public static final tokenType:Lgnu/kawa/xml/XStringType;


# instance fields
.field pattern:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 18
    const-string v0, "gnu.kawa.xml.XString"

    invoke-static {v0}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v0

    sput-object v0, Lgnu/kawa/xml/XStringType;->XStringType:Lgnu/bytecode/ClassType;

    .line 31
    new-instance v0, Lgnu/kawa/xml/XStringType;

    const-string v1, "normalizedString"

    sget-object v2, Lgnu/kawa/xml/XStringType;->stringType:Lgnu/kawa/xml/XDataType;

    const/16 v3, 0x27

    invoke-direct {v0, v1, v2, v3, v5}, Lgnu/kawa/xml/XStringType;-><init>(Ljava/lang/String;Lgnu/kawa/xml/XDataType;ILjava/lang/String;)V

    sput-object v0, Lgnu/kawa/xml/XStringType;->normalizedStringType:Lgnu/kawa/xml/XStringType;

    .line 35
    new-instance v0, Lgnu/kawa/xml/XStringType;

    const-string v1, "token"

    sget-object v2, Lgnu/kawa/xml/XStringType;->normalizedStringType:Lgnu/kawa/xml/XStringType;

    const/16 v3, 0x28

    invoke-direct {v0, v1, v2, v3, v5}, Lgnu/kawa/xml/XStringType;-><init>(Ljava/lang/String;Lgnu/kawa/xml/XDataType;ILjava/lang/String;)V

    sput-object v0, Lgnu/kawa/xml/XStringType;->tokenType:Lgnu/kawa/xml/XStringType;

    .line 39
    new-instance v0, Lgnu/kawa/xml/XStringType;

    const-string v1, "language"

    sget-object v2, Lgnu/kawa/xml/XStringType;->tokenType:Lgnu/kawa/xml/XStringType;

    const/16 v3, 0x29

    const-string v4, "[a-zA-Z]{1,8}(-[a-zA-Z0-9]{1,8})*"

    invoke-direct {v0, v1, v2, v3, v4}, Lgnu/kawa/xml/XStringType;-><init>(Ljava/lang/String;Lgnu/kawa/xml/XDataType;ILjava/lang/String;)V

    sput-object v0, Lgnu/kawa/xml/XStringType;->languageType:Lgnu/kawa/xml/XStringType;

    .line 43
    new-instance v0, Lgnu/kawa/xml/XStringType;

    const-string v1, "NMTOKEN"

    sget-object v2, Lgnu/kawa/xml/XStringType;->tokenType:Lgnu/kawa/xml/XStringType;

    const/16 v3, 0x2a

    const-string v4, "\\c+"

    invoke-direct {v0, v1, v2, v3, v4}, Lgnu/kawa/xml/XStringType;-><init>(Ljava/lang/String;Lgnu/kawa/xml/XDataType;ILjava/lang/String;)V

    sput-object v0, Lgnu/kawa/xml/XStringType;->NMTOKENType:Lgnu/kawa/xml/XStringType;

    .line 47
    new-instance v0, Lgnu/kawa/xml/XStringType;

    const-string v1, "Name"

    sget-object v2, Lgnu/kawa/xml/XStringType;->tokenType:Lgnu/kawa/xml/XStringType;

    const/16 v3, 0x2b

    invoke-direct {v0, v1, v2, v3, v5}, Lgnu/kawa/xml/XStringType;-><init>(Ljava/lang/String;Lgnu/kawa/xml/XDataType;ILjava/lang/String;)V

    sput-object v0, Lgnu/kawa/xml/XStringType;->NameType:Lgnu/kawa/xml/XStringType;

    .line 51
    new-instance v0, Lgnu/kawa/xml/XStringType;

    const-string v1, "NCName"

    sget-object v2, Lgnu/kawa/xml/XStringType;->NameType:Lgnu/kawa/xml/XStringType;

    const/16 v3, 0x2c

    invoke-direct {v0, v1, v2, v3, v5}, Lgnu/kawa/xml/XStringType;-><init>(Ljava/lang/String;Lgnu/kawa/xml/XDataType;ILjava/lang/String;)V

    sput-object v0, Lgnu/kawa/xml/XStringType;->NCNameType:Lgnu/kawa/xml/XStringType;

    .line 55
    new-instance v0, Lgnu/kawa/xml/XStringType;

    const-string v1, "ID"

    sget-object v2, Lgnu/kawa/xml/XStringType;->NCNameType:Lgnu/kawa/xml/XStringType;

    const/16 v3, 0x2d

    invoke-direct {v0, v1, v2, v3, v5}, Lgnu/kawa/xml/XStringType;-><init>(Ljava/lang/String;Lgnu/kawa/xml/XDataType;ILjava/lang/String;)V

    sput-object v0, Lgnu/kawa/xml/XStringType;->IDType:Lgnu/kawa/xml/XStringType;

    .line 59
    new-instance v0, Lgnu/kawa/xml/XStringType;

    const-string v1, "IDREF"

    sget-object v2, Lgnu/kawa/xml/XStringType;->NCNameType:Lgnu/kawa/xml/XStringType;

    const/16 v3, 0x2e

    invoke-direct {v0, v1, v2, v3, v5}, Lgnu/kawa/xml/XStringType;-><init>(Ljava/lang/String;Lgnu/kawa/xml/XDataType;ILjava/lang/String;)V

    sput-object v0, Lgnu/kawa/xml/XStringType;->IDREFType:Lgnu/kawa/xml/XStringType;

    .line 63
    new-instance v0, Lgnu/kawa/xml/XStringType;

    const-string v1, "ENTITY"

    sget-object v2, Lgnu/kawa/xml/XStringType;->NCNameType:Lgnu/kawa/xml/XStringType;

    const/16 v3, 0x2f

    invoke-direct {v0, v1, v2, v3, v5}, Lgnu/kawa/xml/XStringType;-><init>(Ljava/lang/String;Lgnu/kawa/xml/XDataType;ILjava/lang/String;)V

    sput-object v0, Lgnu/kawa/xml/XStringType;->ENTITYType:Lgnu/kawa/xml/XStringType;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lgnu/kawa/xml/XDataType;ILjava/lang/String;)V
    .locals 1
    .parameter "name"
    .parameter "base"
    .parameter "typeCode"
    .parameter "pattern"

    .prologue
    .line 23
    sget-object v0, Lgnu/kawa/xml/XStringType;->XStringType:Lgnu/bytecode/ClassType;

    invoke-direct {p0, p1, v0, p3}, Lgnu/kawa/xml/XDataType;-><init>(Ljava/lang/Object;Lgnu/bytecode/Type;I)V

    .line 24
    iput-object p2, p0, Lgnu/kawa/xml/XStringType;->baseType:Lgnu/kawa/xml/XDataType;

    .line 26
    if-eqz p4, :cond_0

    .line 27
    invoke-static {p4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lgnu/kawa/xml/XStringType;->pattern:Ljava/util/regex/Pattern;

    .line 29
    :cond_0
    return-void
.end method

.method public static makeNCName(Ljava/lang/String;)Lgnu/kawa/xml/XString;
    .locals 1
    .parameter "value"

    .prologue
    .line 151
    sget-object v0, Lgnu/kawa/xml/XStringType;->NCNameType:Lgnu/kawa/xml/XStringType;

    invoke-virtual {v0, p0}, Lgnu/kawa/xml/XStringType;->valueOf(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lgnu/kawa/xml/XString;

    return-object p0
.end method


# virtual methods
.method public cast(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .parameter "value"

    .prologue
    .line 140
    instance-of v2, p1, Lgnu/kawa/xml/XString;

    if-eqz v2, :cond_0

    .line 142
    move-object v0, p1

    check-cast v0, Lgnu/kawa/xml/XString;

    move-object v1, v0

    .line 143
    .local v1, xvalue:Lgnu/kawa/xml/XString;
    invoke-virtual {v1}, Lgnu/kawa/xml/XString;->getStringType()Lgnu/kawa/xml/XStringType;

    move-result-object v2

    if-ne v2, p0, :cond_0

    move-object v2, v1

    .line 146
    .end local v1           #xvalue:Lgnu/kawa/xml/XString;
    :goto_0
    return-object v2

    :cond_0
    sget-object v2, Lgnu/kawa/xml/XStringType;->stringType:Lgnu/kawa/xml/XDataType;

    invoke-virtual {v2, p1}, Lgnu/kawa/xml/XDataType;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2}, Lgnu/kawa/xml/XStringType;->valueOf(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0
.end method

.method public isInstance(Ljava/lang/Object;)Z
    .locals 3
    .parameter "obj"

    .prologue
    const/4 v2, 0x0

    .line 69
    instance-of v1, p1, Lgnu/kawa/xml/XString;

    if-nez v1, :cond_0

    move v1, v2

    .line 82
    .end local p1
    :goto_0
    return v1

    .line 75
    .restart local p1
    :cond_0
    check-cast p1, Lgnu/kawa/xml/XString;

    .end local p1
    invoke-virtual {p1}, Lgnu/kawa/xml/XString;->getStringType()Lgnu/kawa/xml/XStringType;

    move-result-object v0

    .line 76
    .local v0, objType:Lgnu/kawa/xml/XDataType;
    :goto_1
    if-eqz v0, :cond_2

    .line 78
    if-ne v0, p0, :cond_1

    .line 79
    const/4 v1, 0x1

    goto :goto_0

    .line 80
    :cond_1
    iget-object v0, v0, Lgnu/kawa/xml/XDataType;->baseType:Lgnu/kawa/xml/XDataType;

    goto :goto_1

    :cond_2
    move v1, v2

    .line 82
    goto :goto_0
.end method

.method public matches(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "value"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 92
    iget v2, p0, Lgnu/kawa/xml/XStringType;->typeCode:I

    packed-switch v2, :pswitch_data_0

    .line 120
    :pswitch_0
    iget-object v2, p0, Lgnu/kawa/xml/XStringType;->pattern:Ljava/util/regex/Pattern;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lgnu/kawa/xml/XStringType;->pattern:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_0
    move v1, v5

    .line 126
    .local v1, status:Z
    :goto_0
    if-eqz v1, :cond_4

    const/4 v2, 0x0

    :goto_1
    return-object v2

    .line 103
    .end local v1           #status:Z
    :pswitch_1
    iget v2, p0, Lgnu/kawa/xml/XStringType;->typeCode:I

    const/16 v3, 0x27

    if-eq v2, v3, :cond_1

    move v0, v5

    .line 104
    .local v0, collapse:Z
    :goto_2
    invoke-static {p1, v0}, Lgnu/xml/TextUtils;->replaceWhitespace(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    if-ne p1, v2, :cond_2

    move v1, v5

    .line 105
    .restart local v1       #status:Z
    :goto_3
    goto :goto_0

    .end local v0           #collapse:Z
    .end local v1           #status:Z
    :cond_1
    move v0, v4

    .line 103
    goto :goto_2

    .restart local v0       #collapse:Z
    :cond_2
    move v1, v4

    .line 104
    goto :goto_3

    .line 107
    .end local v0           #collapse:Z
    :pswitch_2
    invoke-static {p1}, Lgnu/xml/XName;->isName(Ljava/lang/String;)Z

    move-result v1

    .line 108
    .restart local v1       #status:Z
    goto :goto_0

    .line 113
    .end local v1           #status:Z
    :pswitch_3
    invoke-static {p1}, Lgnu/xml/XName;->isNCName(Ljava/lang/String;)Z

    move-result v1

    .line 114
    .restart local v1       #status:Z
    goto :goto_0

    .line 116
    .end local v1           #status:Z
    :pswitch_4
    invoke-static {p1}, Lgnu/xml/XName;->isNmToken(Ljava/lang/String;)Z

    move-result v1

    .line 117
    .restart local v1       #status:Z
    goto :goto_0

    .end local v1           #status:Z
    :cond_3
    move v1, v4

    .line 120
    goto :goto_0

    .line 126
    .restart local v1       #status:Z
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "not a valid XML "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lgnu/kawa/xml/XStringType;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 92
    :pswitch_data_0
    .packed-switch 0x27
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_4
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method public valueOf(Ljava/lang/String;)Ljava/lang/Object;
    .locals 4
    .parameter "value"

    .prologue
    .line 131
    sget-object v1, Lgnu/kawa/xml/XStringType;->normalizedStringType:Lgnu/kawa/xml/XStringType;

    if-eq p0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {p1, v1}, Lgnu/xml/TextUtils;->replaceWhitespace(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    .line 132
    invoke-virtual {p0, p1}, Lgnu/kawa/xml/XStringType;->matches(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 133
    .local v0, err:Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 134
    new-instance v1, Ljava/lang/ClassCastException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cannot cast "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lgnu/kawa/xml/XStringType;->name:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 131
    .end local v0           #err:Ljava/lang/String;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 135
    .restart local v0       #err:Ljava/lang/String;
    :cond_1
    new-instance v1, Lgnu/kawa/xml/XString;

    invoke-direct {v1, p1, p0}, Lgnu/kawa/xml/XString;-><init>(Ljava/lang/String;Lgnu/kawa/xml/XStringType;)V

    return-object v1
.end method
