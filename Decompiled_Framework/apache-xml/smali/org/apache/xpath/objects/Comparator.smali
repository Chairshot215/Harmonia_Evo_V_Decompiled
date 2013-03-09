.class abstract Lorg/apache/xpath/objects/Comparator;
.super Ljava/lang/Object;
.source "XNodeSet.java"


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method abstract compareNumbers(DD)Z
.end method

.method abstract compareStrings(Lorg/apache/xml/utils/XMLString;Lorg/apache/xml/utils/XMLString;)Z
.end method
