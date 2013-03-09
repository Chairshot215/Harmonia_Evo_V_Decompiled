.class Ljava/text/MessageFormat$FieldContainer;
.super Ljava/lang/Object;
.source "MessageFormat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/text/MessageFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FieldContainer"
.end annotation


# instance fields
.field attribute:Ljava/text/AttributedCharacterIterator$Attribute;

.field end:I

.field start:I

.field value:Ljava/lang/Object;


# direct methods
.method public constructor <init>(IILjava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Ljava/text/MessageFormat$FieldContainer;->start:I

    iput p2, p0, Ljava/text/MessageFormat$FieldContainer;->end:I

    iput-object p3, p0, Ljava/text/MessageFormat$FieldContainer;->attribute:Ljava/text/AttributedCharacterIterator$Attribute;

    iput-object p4, p0, Ljava/text/MessageFormat$FieldContainer;->value:Ljava/lang/Object;

    return-void
.end method
