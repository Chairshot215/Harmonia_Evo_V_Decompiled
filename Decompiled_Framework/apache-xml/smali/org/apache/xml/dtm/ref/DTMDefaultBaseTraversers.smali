.class public abstract Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;
.super Lorg/apache/xml/dtm/ref/DTMDefaultBase;
.source "DTMDefaultBaseTraversers.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$1;,
        Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$DescendantFromRootTraverser;,
        Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$DescendantOrSelfFromRootTraverser;,
        Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$RootTraverser;,
        Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$AllFromRootTraverser;,
        Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$SelfTraverser;,
        Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$PrecedingSiblingTraverser;,
        Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$PrecedingAndAncestorTraverser;,
        Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$PrecedingTraverser;,
        Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$ParentTraverser;,
        Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$NamespaceTraverser;,
        Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$NamespaceDeclsTraverser;,
        Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$FollowingSiblingTraverser;,
        Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$FollowingTraverser;,
        Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$AllFromNodeTraverser;,
        Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$DescendantOrSelfTraverser;,
        Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$DescendantTraverser;,
        Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$IndexedDTMAxisTraverser;,
        Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$ChildTraverser;,
        Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$AttributeTraverser;,
        Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$AncestorOrSelfTraverser;,
        Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$AncestorTraverser;
    }
.end annotation


# direct methods
.method public constructor <init>(Lorg/apache/xml/dtm/DTMManager;Ljavax/xml/transform/Source;ILorg/apache/xml/dtm/DTMWSFilter;Lorg/apache/xml/utils/XMLStringFactory;Z)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;-><init>(Lorg/apache/xml/dtm/DTMManager;Ljavax/xml/transform/Source;ILorg/apache/xml/dtm/DTMWSFilter;Lorg/apache/xml/utils/XMLStringFactory;Z)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/xml/dtm/DTMManager;Ljavax/xml/transform/Source;ILorg/apache/xml/dtm/DTMWSFilter;Lorg/apache/xml/utils/XMLStringFactory;ZIZZ)V
    .locals 0

    invoke-direct/range {p0 .. p9}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;-><init>(Lorg/apache/xml/dtm/DTMManager;Ljavax/xml/transform/Source;ILorg/apache/xml/dtm/DTMWSFilter;Lorg/apache/xml/utils/XMLStringFactory;ZIZZ)V

    return-void
.end method


# virtual methods
.method public getAxisTraverser(I)Lorg/apache/xml/dtm/DTMAxisTraverser;
    .locals 6

    const/4 v3, 0x1

    const/4 v5, 0x0

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_traversers:[Lorg/apache/xml/dtm/DTMAxisTraverser;

    if-nez v2, :cond_1

    invoke-static {}, Lorg/apache/xml/dtm/Axis;->getNamesLength()I

    move-result v2

    new-array v2, v2, [Lorg/apache/xml/dtm/DTMAxisTraverser;

    iput-object v2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_traversers:[Lorg/apache/xml/dtm/DTMAxisTraverser;

    const/4 v0, 0x0

    :cond_0
    packed-switch p1, :pswitch_data_0

    new-instance v1, Lorg/apache/xml/dtm/DTMException;

    const-string v2, "ER_UNKNOWN_AXIS_TYPE"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Lorg/apache/xml/res/XMLMessages;->createXMLMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/xml/dtm/DTMException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_traversers:[Lorg/apache/xml/dtm/DTMAxisTraverser;

    aget-object v0, v2, p1

    if-eqz v0, :cond_0

    move-object v1, v0

    :goto_0
    :pswitch_0
    return-object v1

    :pswitch_1
    new-instance v0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$AncestorTraverser;

    invoke-direct {v0, p0, v1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$AncestorTraverser;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$1;)V

    :goto_1
    if-nez v0, :cond_2

    new-instance v1, Lorg/apache/xml/dtm/DTMException;

    const-string v2, "ER_AXIS_TRAVERSER_NOT_SUPPORTED"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Lorg/apache/xml/dtm/Axis;->getNames(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Lorg/apache/xml/res/XMLMessages;->createXMLMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/xml/dtm/DTMException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_2
    new-instance v0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$AncestorOrSelfTraverser;

    invoke-direct {v0, p0, v1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$AncestorOrSelfTraverser;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$1;)V

    goto :goto_1

    :pswitch_3
    new-instance v0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$AttributeTraverser;

    invoke-direct {v0, p0, v1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$AttributeTraverser;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$1;)V

    goto :goto_1

    :pswitch_4
    new-instance v0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$ChildTraverser;

    invoke-direct {v0, p0, v1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$ChildTraverser;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$1;)V

    goto :goto_1

    :pswitch_5
    new-instance v0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$DescendantTraverser;

    invoke-direct {v0, p0, v1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$DescendantTraverser;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$1;)V

    goto :goto_1

    :pswitch_6
    new-instance v0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$DescendantOrSelfTraverser;

    invoke-direct {v0, p0, v1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$DescendantOrSelfTraverser;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$1;)V

    goto :goto_1

    :pswitch_7
    new-instance v0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$FollowingTraverser;

    invoke-direct {v0, p0, v1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$FollowingTraverser;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$1;)V

    goto :goto_1

    :pswitch_8
    new-instance v0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$FollowingSiblingTraverser;

    invoke-direct {v0, p0, v1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$FollowingSiblingTraverser;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$1;)V

    goto :goto_1

    :pswitch_9
    new-instance v0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$NamespaceTraverser;

    invoke-direct {v0, p0, v1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$NamespaceTraverser;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$1;)V

    goto :goto_1

    :pswitch_a
    new-instance v0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$NamespaceDeclsTraverser;

    invoke-direct {v0, p0, v1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$NamespaceDeclsTraverser;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$1;)V

    goto :goto_1

    :pswitch_b
    new-instance v0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$ParentTraverser;

    invoke-direct {v0, p0, v1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$ParentTraverser;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$1;)V

    goto :goto_1

    :pswitch_c
    new-instance v0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$PrecedingTraverser;

    invoke-direct {v0, p0, v1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$PrecedingTraverser;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$1;)V

    goto :goto_1

    :pswitch_d
    new-instance v0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$PrecedingSiblingTraverser;

    invoke-direct {v0, p0, v1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$PrecedingSiblingTraverser;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$1;)V

    goto :goto_1

    :pswitch_e
    new-instance v0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$SelfTraverser;

    invoke-direct {v0, p0, v1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$SelfTraverser;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$1;)V

    goto :goto_1

    :pswitch_f
    new-instance v0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$AllFromRootTraverser;

    invoke-direct {v0, p0, v1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$AllFromRootTraverser;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$1;)V

    goto :goto_1

    :pswitch_10
    new-instance v0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$AllFromNodeTraverser;

    invoke-direct {v0, p0, v1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$AllFromNodeTraverser;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$1;)V

    goto :goto_1

    :pswitch_11
    new-instance v0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$PrecedingAndAncestorTraverser;

    invoke-direct {v0, p0, v1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$PrecedingAndAncestorTraverser;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$1;)V

    goto :goto_1

    :pswitch_12
    new-instance v0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$DescendantFromRootTraverser;

    invoke-direct {v0, p0, v1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$DescendantFromRootTraverser;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$1;)V

    goto :goto_1

    :pswitch_13
    new-instance v0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$DescendantOrSelfFromRootTraverser;

    invoke-direct {v0, p0, v1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$DescendantOrSelfFromRootTraverser;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$1;)V

    goto/16 :goto_1

    :pswitch_14
    new-instance v0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$RootTraverser;

    invoke-direct {v0, p0, v1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$RootTraverser;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$1;)V

    goto/16 :goto_1

    :cond_2
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_traversers:[Lorg/apache/xml/dtm/DTMAxisTraverser;

    aput-object v0, v1, p1

    move-object v1, v0

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_a
        :pswitch_9
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_10
        :pswitch_11
        :pswitch_f
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_0
    .end packed-switch
.end method
