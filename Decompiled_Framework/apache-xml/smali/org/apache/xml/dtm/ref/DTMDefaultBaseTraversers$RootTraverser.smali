.class Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$RootTraverser;
.super Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$AllFromRootTraverser;
.source "DTMDefaultBaseTraversers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RootTraverser"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;


# direct methods
.method private constructor <init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;)V
    .locals 1

    iput-object p1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$RootTraverser;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$AllFromRootTraverser;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$RootTraverser;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;)V

    return-void
.end method


# virtual methods
.method public first(II)I
    .locals 2

    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$RootTraverser;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    invoke-virtual {v1, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;->getDocumentRoot(I)I

    move-result v0

    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$RootTraverser;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    invoke-virtual {v1, v0}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;->getExpandedTypeID(I)I

    move-result v1

    if-ne v1, p2, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public next(II)I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public next(III)I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method
