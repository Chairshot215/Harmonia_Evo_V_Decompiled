.class public Lorg/apache/xalan/res/XSLMessages;
.super Lorg/apache/xpath/res/XPATHMessages;
.source "XSLMessages.java"


# static fields
.field private static XSLTBundle:Ljava/util/ListResourceBundle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/apache/xalan/res/XSLTErrorResources;

    invoke-direct {v0}, Lorg/apache/xalan/res/XSLTErrorResources;-><init>()V

    sput-object v0, Lorg/apache/xalan/res/XSLMessages;->XSLTBundle:Ljava/util/ListResourceBundle;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/xpath/res/XPATHMessages;-><init>()V

    return-void
.end method

.method public static final createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/apache/xalan/res/XSLMessages;->XSLTBundle:Ljava/util/ListResourceBundle;

    invoke-static {v0, p0, p1}, Lorg/apache/xalan/res/XSLMessages;->createMsg(Ljava/util/ListResourceBundle;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final createWarning(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/apache/xalan/res/XSLMessages;->XSLTBundle:Ljava/util/ListResourceBundle;

    invoke-static {v0, p0, p1}, Lorg/apache/xalan/res/XSLMessages;->createMsg(Ljava/util/ListResourceBundle;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
