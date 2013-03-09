.class public Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/DateTimeField;
.super Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/Field;
.source "DateTimeField.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/DateTimeField$Parser;
    }
.end annotation


# instance fields
.field private date:Ljava/util/Date;

.field private parseException:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/ParseException;


# direct methods
.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/ParseException;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/Field;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object p4, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/DateTimeField;->date:Ljava/util/Date;

    iput-object p5, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/DateTimeField;->parseException:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/ParseException;

    return-void
.end method


# virtual methods
.method public getDate()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/DateTimeField;->date:Ljava/util/Date;

    return-object v0
.end method

.method public getParseException()Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/ParseException;
    .locals 1

    iget-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/DateTimeField;->parseException:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/ParseException;

    return-object v0
.end method
