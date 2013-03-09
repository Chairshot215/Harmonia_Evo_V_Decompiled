.class public Lorg/apache/xpath/objects/XMLStringFactoryImpl;
.super Lorg/apache/xml/utils/XMLStringFactory;
.source "XMLStringFactoryImpl.java"


# static fields
.field private static m_xstringfactory:Lorg/apache/xml/utils/XMLStringFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/apache/xpath/objects/XMLStringFactoryImpl;

    invoke-direct {v0}, Lorg/apache/xpath/objects/XMLStringFactoryImpl;-><init>()V

    sput-object v0, Lorg/apache/xpath/objects/XMLStringFactoryImpl;->m_xstringfactory:Lorg/apache/xml/utils/XMLStringFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/xml/utils/XMLStringFactory;-><init>()V

    return-void
.end method

.method public static getFactory()Lorg/apache/xml/utils/XMLStringFactory;
    .locals 1

    sget-object v0, Lorg/apache/xpath/objects/XMLStringFactoryImpl;->m_xstringfactory:Lorg/apache/xml/utils/XMLStringFactory;

    return-object v0
.end method


# virtual methods
.method public emptystr()Lorg/apache/xml/utils/XMLString;
    .locals 1

    sget-object v0, Lorg/apache/xpath/objects/XString;->EMPTYSTRING:Lorg/apache/xpath/objects/XString;

    return-object v0
.end method

.method public newstr(Ljava/lang/String;)Lorg/apache/xml/utils/XMLString;
    .locals 1

    new-instance v0, Lorg/apache/xpath/objects/XString;

    invoke-direct {v0, p1}, Lorg/apache/xpath/objects/XString;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public newstr(Lorg/apache/xml/utils/FastStringBuffer;II)Lorg/apache/xml/utils/XMLString;
    .locals 1

    new-instance v0, Lorg/apache/xpath/objects/XStringForFSB;

    invoke-direct {v0, p1, p2, p3}, Lorg/apache/xpath/objects/XStringForFSB;-><init>(Lorg/apache/xml/utils/FastStringBuffer;II)V

    return-object v0
.end method

.method public newstr([CII)Lorg/apache/xml/utils/XMLString;
    .locals 1

    new-instance v0, Lorg/apache/xpath/objects/XStringForChars;

    invoke-direct {v0, p1, p2, p3}, Lorg/apache/xpath/objects/XStringForChars;-><init>([CII)V

    return-object v0
.end method
