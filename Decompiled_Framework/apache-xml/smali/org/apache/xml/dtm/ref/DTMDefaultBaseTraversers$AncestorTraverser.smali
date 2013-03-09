.class Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$AncestorTraverser;
.super Lorg/apache/xml/dtm/DTMAxisTraverser;
.source "DTMDefaultBaseTraversers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AncestorTraverser"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;


# direct methods
.method private constructor <init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$AncestorTraverser;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    invoke-direct {p0}, Lorg/apache/xml/dtm/DTMAxisTraverser;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$AncestorTraverser;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;)V

    return-void
.end method


# virtual methods
.method public next(II)I
    .locals 1

    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$AncestorTraverser;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    invoke-virtual {v0, p2}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;->getParent(I)I

    move-result v0

    return v0
.end method

.method public next(III)I
    .locals 2

    const/4 v0, -0x1

    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$AncestorTraverser;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    invoke-virtual {v1, p2}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;->makeNodeIdentity(I)I

    move-result p2

    :cond_0
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$AncestorTraverser;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    iget-object v1, v1, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_parent:Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-virtual {v1, p2}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    move-result p2

    if-eq v0, p2, :cond_1

    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$AncestorTraverser;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    iget-object v1, v1, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_exptype:Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-virtual {v1, p2}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    move-result v1

    if-ne v1, p3, :cond_0

    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$AncestorTraverser;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    invoke-virtual {v0, p2}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;->makeNodeHandle(I)I

    move-result v0

    :cond_1
    return v0
.end method
