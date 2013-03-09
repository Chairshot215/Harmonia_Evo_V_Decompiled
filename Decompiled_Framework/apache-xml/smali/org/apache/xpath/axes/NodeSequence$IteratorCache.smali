.class final Lorg/apache/xpath/axes/NodeSequence$IteratorCache;
.super Ljava/lang/Object;
.source "NodeSequence.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xpath/axes/NodeSequence;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "IteratorCache"
.end annotation


# instance fields
.field private m_isComplete2:Z

.field private m_useCount2:I

.field private m_vec2:Lorg/apache/xml/utils/NodeVector;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xpath/axes/NodeSequence$IteratorCache;->m_vec2:Lorg/apache/xml/utils/NodeVector;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/xpath/axes/NodeSequence$IteratorCache;->m_isComplete2:Z

    const/4 v0, 0x1

    iput v0, p0, Lorg/apache/xpath/axes/NodeSequence$IteratorCache;->m_useCount2:I

    return-void
.end method

.method static synthetic access$000(Lorg/apache/xpath/axes/NodeSequence$IteratorCache;)Lorg/apache/xml/utils/NodeVector;
    .locals 1

    invoke-direct {p0}, Lorg/apache/xpath/axes/NodeSequence$IteratorCache;->getVector()Lorg/apache/xml/utils/NodeVector;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lorg/apache/xpath/axes/NodeSequence$IteratorCache;)Z
    .locals 1

    invoke-direct {p0}, Lorg/apache/xpath/axes/NodeSequence$IteratorCache;->isComplete()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lorg/apache/xpath/axes/NodeSequence$IteratorCache;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/xpath/axes/NodeSequence$IteratorCache;->setCacheComplete(Z)V

    return-void
.end method

.method static synthetic access$300(Lorg/apache/xpath/axes/NodeSequence$IteratorCache;)I
    .locals 1

    invoke-direct {p0}, Lorg/apache/xpath/axes/NodeSequence$IteratorCache;->useCount()I

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lorg/apache/xpath/axes/NodeSequence$IteratorCache;Lorg/apache/xml/utils/NodeVector;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/xpath/axes/NodeSequence$IteratorCache;->setVector(Lorg/apache/xml/utils/NodeVector;)V

    return-void
.end method

.method static synthetic access$500(Lorg/apache/xpath/axes/NodeSequence$IteratorCache;)V
    .locals 0

    invoke-direct {p0}, Lorg/apache/xpath/axes/NodeSequence$IteratorCache;->increaseUseCount()V

    return-void
.end method

.method private getVector()Lorg/apache/xml/utils/NodeVector;
    .locals 1

    iget-object v0, p0, Lorg/apache/xpath/axes/NodeSequence$IteratorCache;->m_vec2:Lorg/apache/xml/utils/NodeVector;

    return-object v0
.end method

.method private increaseUseCount()V
    .locals 1

    iget-object v0, p0, Lorg/apache/xpath/axes/NodeSequence$IteratorCache;->m_vec2:Lorg/apache/xml/utils/NodeVector;

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/apache/xpath/axes/NodeSequence$IteratorCache;->m_useCount2:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/xpath/axes/NodeSequence$IteratorCache;->m_useCount2:I

    :cond_0
    return-void
.end method

.method private isComplete()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/xpath/axes/NodeSequence$IteratorCache;->m_isComplete2:Z

    return v0
.end method

.method private setCacheComplete(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/xpath/axes/NodeSequence$IteratorCache;->m_isComplete2:Z

    return-void
.end method

.method private setVector(Lorg/apache/xml/utils/NodeVector;)V
    .locals 1

    iput-object p1, p0, Lorg/apache/xpath/axes/NodeSequence$IteratorCache;->m_vec2:Lorg/apache/xml/utils/NodeVector;

    const/4 v0, 0x1

    iput v0, p0, Lorg/apache/xpath/axes/NodeSequence$IteratorCache;->m_useCount2:I

    return-void
.end method

.method private useCount()I
    .locals 1

    iget v0, p0, Lorg/apache/xpath/axes/NodeSequence$IteratorCache;->m_useCount2:I

    return v0
.end method
