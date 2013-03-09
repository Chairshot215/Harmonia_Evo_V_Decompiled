.class Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser$Date;
.super Ljava/lang/Object;
.source "DateTimeParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Date"
.end annotation


# instance fields
.field private day:I

.field private month:I

.field private year:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser$Date;->year:Ljava/lang/String;

    iput p2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser$Date;->month:I

    iput p3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser$Date;->day:I

    return-void
.end method


# virtual methods
.method public getDay()I
    .locals 1

    iget v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser$Date;->day:I

    return v0
.end method

.method public getMonth()I
    .locals 1

    iget v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser$Date;->month:I

    return v0
.end method

.method public getYear()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser$Date;->year:Ljava/lang/String;

    return-object v0
.end method
