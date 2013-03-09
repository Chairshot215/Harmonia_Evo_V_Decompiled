.class public Lorg/apache/xml/utils/NSInfo;
.super Ljava/lang/Object;
.source "NSInfo.java"


# static fields
.field public static final ANCESTORHASXMLNS:I = 0x1

.field public static final ANCESTORNOXMLNS:I = 0x2

.field public static final ANCESTORXMLNSUNPROCESSED:I


# instance fields
.field public m_ancestorHasXMLNSAttrs:I

.field public m_hasProcessedNS:Z

.field public m_hasXMLNSAttrs:Z

.field public m_namespace:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/xml/utils/NSInfo;->m_hasProcessedNS:Z

    iput-boolean p2, p0, Lorg/apache/xml/utils/NSInfo;->m_hasXMLNSAttrs:Z

    iput-object p1, p0, Lorg/apache/xml/utils/NSInfo;->m_namespace:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/xml/utils/NSInfo;->m_ancestorHasXMLNSAttrs:I

    return-void
.end method

.method public constructor <init>(ZZ)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lorg/apache/xml/utils/NSInfo;->m_hasProcessedNS:Z

    iput-boolean p2, p0, Lorg/apache/xml/utils/NSInfo;->m_hasXMLNSAttrs:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xml/utils/NSInfo;->m_namespace:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/xml/utils/NSInfo;->m_ancestorHasXMLNSAttrs:I

    return-void
.end method

.method public constructor <init>(ZZI)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lorg/apache/xml/utils/NSInfo;->m_hasProcessedNS:Z

    iput-boolean p2, p0, Lorg/apache/xml/utils/NSInfo;->m_hasXMLNSAttrs:Z

    iput p3, p0, Lorg/apache/xml/utils/NSInfo;->m_ancestorHasXMLNSAttrs:I

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xml/utils/NSInfo;->m_namespace:Ljava/lang/String;

    return-void
.end method
