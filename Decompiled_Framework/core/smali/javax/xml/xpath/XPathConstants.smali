.class public Ljavax/xml/xpath/XPathConstants;
.super Ljava/lang/Object;
.source "XPathConstants.java"


# static fields
.field public static final BOOLEAN:Ljavax/xml/namespace/QName; = null

.field public static final DOM_OBJECT_MODEL:Ljava/lang/String; = "http://java.sun.com/jaxp/xpath/dom"

.field public static final NODE:Ljavax/xml/namespace/QName;

.field public static final NODESET:Ljavax/xml/namespace/QName;

.field public static final NUMBER:Ljavax/xml/namespace/QName;

.field public static final STRING:Ljavax/xml/namespace/QName;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljavax/xml/namespace/QName;

    const-string v1, "http://www.w3.org/1999/XSL/Transform"

    const-string v2, "NUMBER"

    invoke-direct {v0, v1, v2}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Ljavax/xml/xpath/XPathConstants;->NUMBER:Ljavax/xml/namespace/QName;

    new-instance v0, Ljavax/xml/namespace/QName;

    const-string v1, "http://www.w3.org/1999/XSL/Transform"

    const-string v2, "STRING"

    invoke-direct {v0, v1, v2}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Ljavax/xml/xpath/XPathConstants;->STRING:Ljavax/xml/namespace/QName;

    new-instance v0, Ljavax/xml/namespace/QName;

    const-string v1, "http://www.w3.org/1999/XSL/Transform"

    const-string v2, "BOOLEAN"

    invoke-direct {v0, v1, v2}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Ljavax/xml/xpath/XPathConstants;->BOOLEAN:Ljavax/xml/namespace/QName;

    new-instance v0, Ljavax/xml/namespace/QName;

    const-string v1, "http://www.w3.org/1999/XSL/Transform"

    const-string v2, "NODESET"

    invoke-direct {v0, v1, v2}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Ljavax/xml/xpath/XPathConstants;->NODESET:Ljavax/xml/namespace/QName;

    new-instance v0, Ljavax/xml/namespace/QName;

    const-string v1, "http://www.w3.org/1999/XSL/Transform"

    const-string v2, "NODE"

    invoke-direct {v0, v1, v2}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Ljavax/xml/xpath/XPathConstants;->NODE:Ljavax/xml/namespace/QName;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
