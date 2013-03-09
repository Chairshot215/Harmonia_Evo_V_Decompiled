.class public abstract Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/Field;
.super Ljava/lang/Object;
.source "Field.java"


# static fields
.field public static final BCC:Ljava/lang/String; = "Bcc"

.field public static final CC:Ljava/lang/String; = "Cc"

.field public static final CONTENT_TRANSFER_ENCODING:Ljava/lang/String; = "Content-Transfer-Encoding"

.field public static final CONTENT_TYPE:Ljava/lang/String; = "Content-Type"

.field public static final DATE:Ljava/lang/String; = "Date"

.field private static final FIELD_NAME_PATTERN:Ljava/lang/String; = "^([\\x21-\\x39\\x3b-\\x7e]+)[ \t]*:"

.field public static final FROM:Ljava/lang/String; = "From"

.field public static final REPLY_TO:Ljava/lang/String; = "Reply-To"

.field public static final RESENT_BCC:Ljava/lang/String; = "Resent-Bcc"

.field public static final RESENT_CC:Ljava/lang/String; = "Resent-Cc"

.field public static final RESENT_DATE:Ljava/lang/String; = "Resent-Date"

.field public static final RESENT_FROM:Ljava/lang/String; = "Resent-From"

.field public static final RESENT_SENDER:Ljava/lang/String; = "Resent-Sender"

.field public static final RESENT_TO:Ljava/lang/String; = "Resent-To"

.field public static final SENDER:Ljava/lang/String; = "Sender"

.field public static final SUBJECT:Ljava/lang/String; = "Subject"

.field public static final TO:Ljava/lang/String; = "To"

.field private static final fieldNamePattern:Ljava/util/regex/Pattern;

.field private static final parser:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/DefaultFieldParser;


# instance fields
.field private final body:Ljava/lang/String;

.field private final name:Ljava/lang/String;

.field private final raw:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    const-string v0, "^([\\x21-\\x39\\x3b-\\x7e]+)[ \t]*:"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/Field;->fieldNamePattern:Ljava/util/regex/Pattern;

    .line 57
    new-instance v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/DefaultFieldParser;

    invoke-direct {v0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/DefaultFieldParser;-><init>()V

    sput-object v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/Field;->parser:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/DefaultFieldParser;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "name"
    .parameter "body"
    .parameter "raw"

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/Field;->name:Ljava/lang/String;

    .line 65
    iput-object p2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/Field;->body:Ljava/lang/String;

    .line 66
    iput-object p3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/Field;->raw:Ljava/lang/String;

    .line 67
    return-void
.end method

.method public static getParser()Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/DefaultFieldParser;
    .locals 1

    .prologue
    .line 114
    sget-object v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/Field;->parser:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/DefaultFieldParser;

    return-object v0
.end method

.method public static parse(Ljava/lang/String;)Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/Field;
    .locals 7
    .parameter "raw"

    .prologue
    const/4 v6, 0x1

    .line 90
    const-string v4, "\r|\n"

    const-string v5, ""

    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 95
    .local v3, unfolded:Ljava/lang/String;
    sget-object v4, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/Field;->fieldNamePattern:Ljava/util/regex/Pattern;

    invoke-virtual {v4, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 96
    .local v1, fieldMatcher:Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-nez v4, :cond_0

    .line 97
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Invalid field in string"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 99
    :cond_0
    invoke-virtual {v1, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    .line 101
    .local v2, name:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->end()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 102
    .local v0, body:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x20

    if-ne v4, v5, :cond_1

    .line 103
    invoke-virtual {v0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 106
    :cond_1
    sget-object v4, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/Field;->parser:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/DefaultFieldParser;

    invoke-virtual {v4, v2, v0, p0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/DefaultFieldParser;->parse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/Field;

    move-result-object v4

    return-object v4
.end method


# virtual methods
.method public getBody()Ljava/lang/String;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/Field;->body:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/Field;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getRaw()Ljava/lang/String;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/Field;->raw:Ljava/lang/String;

    return-object v0
.end method

.method public isContentType()Z
    .locals 2

    .prologue
    .line 153
    const-string v0, "Content-Type"

    iget-object v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/Field;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isFrom()Z
    .locals 2

    .prologue
    .line 173
    const-string v0, "From"

    iget-object v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/Field;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isSubject()Z
    .locals 2

    .prologue
    .line 163
    const-string v0, "Subject"

    iget-object v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/Field;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isTo()Z
    .locals 2

    .prologue
    .line 183
    const-string v0, "To"

    iget-object v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/Field;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/Field;->raw:Ljava/lang/String;

    return-object v0
.end method
