.class final Lorg/apache/xml/dtm/ref/ExpandedNameTable$HashEntry;
.super Ljava/lang/Object;
.source "ExpandedNameTable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xml/dtm/ref/ExpandedNameTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "HashEntry"
.end annotation


# instance fields
.field hash:I

.field key:Lorg/apache/xml/dtm/ref/ExtendedType;

.field next:Lorg/apache/xml/dtm/ref/ExpandedNameTable$HashEntry;

.field value:I


# direct methods
.method protected constructor <init>(Lorg/apache/xml/dtm/ref/ExtendedType;IILorg/apache/xml/dtm/ref/ExpandedNameTable$HashEntry;)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/xml/dtm/ref/ExpandedNameTable$HashEntry;->key:Lorg/apache/xml/dtm/ref/ExtendedType;

    iput p2, p0, Lorg/apache/xml/dtm/ref/ExpandedNameTable$HashEntry;->value:I

    iput p3, p0, Lorg/apache/xml/dtm/ref/ExpandedNameTable$HashEntry;->hash:I

    iput-object p4, p0, Lorg/apache/xml/dtm/ref/ExpandedNameTable$HashEntry;->next:Lorg/apache/xml/dtm/ref/ExpandedNameTable$HashEntry;

    return-void
.end method
