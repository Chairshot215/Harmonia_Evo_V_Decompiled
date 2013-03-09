.class public Lorg/apache/xalan/transformer/DecimalToRoman;
.super Ljava/lang/Object;
.source "DecimalToRoman.java"


# instance fields
.field public m_postLetter:Ljava/lang/String;

.field public m_postValue:J

.field public m_preLetter:Ljava/lang/String;

.field public m_preValue:J


# direct methods
.method public constructor <init>(JLjava/lang/String;JLjava/lang/String;)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lorg/apache/xalan/transformer/DecimalToRoman;->m_postValue:J

    iput-object p3, p0, Lorg/apache/xalan/transformer/DecimalToRoman;->m_postLetter:Ljava/lang/String;

    iput-wide p4, p0, Lorg/apache/xalan/transformer/DecimalToRoman;->m_preValue:J

    iput-object p6, p0, Lorg/apache/xalan/transformer/DecimalToRoman;->m_preLetter:Ljava/lang/String;

    return-void
.end method
