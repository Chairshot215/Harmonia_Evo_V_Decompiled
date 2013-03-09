.class public Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/ContentTransferEncodingField;
.super Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/Field;
.source "ContentTransferEncodingField.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/ContentTransferEncodingField$Parser;
    }
.end annotation


# static fields
.field public static final ENC_7BIT:Ljava/lang/String; = "7bit"

.field public static final ENC_8BIT:Ljava/lang/String; = "8bit"

.field public static final ENC_BASE64:Ljava/lang/String; = "base64"

.field public static final ENC_BINARY:Ljava/lang/String; = "binary"

.field public static final ENC_QUOTED_PRINTABLE:Ljava/lang/String; = "quoted-printable"


# instance fields
.field private encoding:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "name"
    .parameter "body"
    .parameter "raw"
    .parameter "encoding"

    .prologue
    .line 55
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/Field;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    iput-object p4, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/ContentTransferEncodingField;->encoding:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public static getEncoding(Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/ContentTransferEncodingField;)Ljava/lang/String;
    .locals 1
    .parameter "f"

    .prologue
    .line 76
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/ContentTransferEncodingField;->getEncoding()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    invoke-virtual {p0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/ContentTransferEncodingField;->getEncoding()Ljava/lang/String;

    move-result-object v0

    .line 79
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "7bit"

    goto :goto_0
.end method


# virtual methods
.method public getEncoding()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/ContentTransferEncodingField;->encoding:Ljava/lang/String;

    return-object v0
.end method
