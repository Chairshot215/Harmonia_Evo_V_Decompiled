.class public Lorg/apache/xml/utils/res/StringArrayWrapper;
.super Ljava/lang/Object;
.source "StringArrayWrapper.java"


# instance fields
.field private m_string:[Ljava/lang/String;


# direct methods
.method public constructor <init>([Ljava/lang/String;)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/xml/utils/res/StringArrayWrapper;->m_string:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getLength()I
    .locals 1

    iget-object v0, p0, Lorg/apache/xml/utils/res/StringArrayWrapper;->m_string:[Ljava/lang/String;

    array-length v0, v0

    return v0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/xml/utils/res/StringArrayWrapper;->m_string:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0
.end method
