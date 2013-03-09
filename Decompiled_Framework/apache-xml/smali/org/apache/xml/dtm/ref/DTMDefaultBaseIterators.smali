.class public abstract Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;
.super Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;
.source "DTMDefaultBaseIterators.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedSingletonIterator;,
        Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$SingletonIterator;,
        Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$NthDescendantIterator;,
        Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedDescendantIterator;,
        Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$DescendantIterator;,
        Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedAncestorIterator;,
        Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$AncestorIterator;,
        Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedFollowingIterator;,
        Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$FollowingIterator;,
        Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedPrecedingIterator;,
        Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$PrecedingIterator;,
        Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedPrecedingSiblingIterator;,
        Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$PrecedingSiblingIterator;,
        Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedAttributeIterator;,
        Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$AttributeIterator;,
        Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedFollowingSiblingIterator;,
        Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$FollowingSiblingIterator;,
        Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$NamespaceAttributeIterator;,
        Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedRootIterator;,
        Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$RootIterator;,
        Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedNamespaceIterator;,
        Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$NamespaceIterator;,
        Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$NamespaceChildrenIterator;,
        Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedChildrenIterator;,
        Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$ParentIterator;,
        Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$ChildrenIterator;,
        Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$InternalAxisIteratorBase;
    }
.end annotation


# direct methods
.method public constructor <init>(Lorg/apache/xml/dtm/DTMManager;Ljavax/xml/transform/Source;ILorg/apache/xml/dtm/DTMWSFilter;Lorg/apache/xml/utils/XMLStringFactory;Z)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;-><init>(Lorg/apache/xml/dtm/DTMManager;Ljavax/xml/transform/Source;ILorg/apache/xml/dtm/DTMWSFilter;Lorg/apache/xml/utils/XMLStringFactory;Z)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/xml/dtm/DTMManager;Ljavax/xml/transform/Source;ILorg/apache/xml/dtm/DTMWSFilter;Lorg/apache/xml/utils/XMLStringFactory;ZIZZ)V
    .locals 0

    invoke-direct/range {p0 .. p9}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;-><init>(Lorg/apache/xml/dtm/DTMManager;Ljavax/xml/transform/Source;ILorg/apache/xml/dtm/DTMWSFilter;Lorg/apache/xml/utils/XMLStringFactory;ZIZZ)V

    return-void
.end method


# virtual methods
.method public getAxisIterator(I)Lorg/apache/xml/dtm/DTMAxisIterator;
    .locals 6

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    new-instance v1, Lorg/apache/xml/dtm/DTMException;

    const-string v2, "ER_ITERATOR_AXIS_NOT_IMPLEMENTED"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Lorg/apache/xml/dtm/Axis;->getNames(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lorg/apache/xml/res/XMLMessages;->createXMLMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/xml/dtm/DTMException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_1
    new-instance v0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$SingletonIterator;

    invoke-direct {v0, p0}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$SingletonIterator;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;)V

    :goto_0
    move-object v1, v0

    :goto_1
    return-object v1

    :pswitch_2
    new-instance v0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$ChildrenIterator;

    invoke-direct {v0, p0}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$ChildrenIterator;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;)V

    goto :goto_0

    :pswitch_3
    new-instance v1, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$ParentIterator;

    invoke-direct {v1, p0}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$ParentIterator;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;)V

    goto :goto_1

    :pswitch_4
    new-instance v1, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$AncestorIterator;

    invoke-direct {v1, p0}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$AncestorIterator;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;)V

    goto :goto_1

    :pswitch_5
    new-instance v1, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$AncestorIterator;

    invoke-direct {v1, p0}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$AncestorIterator;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;)V

    invoke-virtual {v1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$AncestorIterator;->includeSelf()Lorg/apache/xml/dtm/DTMAxisIterator;

    move-result-object v1

    goto :goto_1

    :pswitch_6
    new-instance v1, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$AttributeIterator;

    invoke-direct {v1, p0}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$AttributeIterator;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;)V

    goto :goto_1

    :pswitch_7
    new-instance v0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$DescendantIterator;

    invoke-direct {v0, p0}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$DescendantIterator;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;)V

    goto :goto_0

    :pswitch_8
    new-instance v1, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$DescendantIterator;

    invoke-direct {v1, p0}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$DescendantIterator;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;)V

    invoke-virtual {v1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$DescendantIterator;->includeSelf()Lorg/apache/xml/dtm/DTMAxisIterator;

    move-result-object v0

    goto :goto_0

    :pswitch_9
    new-instance v0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$FollowingIterator;

    invoke-direct {v0, p0}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$FollowingIterator;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;)V

    goto :goto_0

    :pswitch_a
    new-instance v0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$PrecedingIterator;

    invoke-direct {v0, p0}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$PrecedingIterator;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;)V

    goto :goto_0

    :pswitch_b
    new-instance v0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$FollowingSiblingIterator;

    invoke-direct {v0, p0}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$FollowingSiblingIterator;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;)V

    goto :goto_0

    :pswitch_c
    new-instance v0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$PrecedingSiblingIterator;

    invoke-direct {v0, p0}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$PrecedingSiblingIterator;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;)V

    goto :goto_0

    :pswitch_d
    new-instance v0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$NamespaceIterator;

    invoke-direct {v0, p0}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$NamespaceIterator;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;)V

    goto :goto_0

    :pswitch_e
    new-instance v0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$RootIterator;

    invoke-direct {v0, p0}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$RootIterator;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_2
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_b
        :pswitch_0
        :pswitch_d
        :pswitch_3
        :pswitch_a
        :pswitch_c
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_e
    .end packed-switch
.end method

.method public getTypedAxisIterator(II)Lorg/apache/xml/dtm/DTMAxisIterator;
    .locals 6

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    new-instance v1, Lorg/apache/xml/dtm/DTMException;

    const-string v2, "ER_TYPED_ITERATOR_AXIS_NOT_IMPLEMENTED"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Lorg/apache/xml/dtm/Axis;->getNames(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lorg/apache/xml/res/XMLMessages;->createXMLMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/xml/dtm/DTMException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_1
    new-instance v0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedSingletonIterator;

    invoke-direct {v0, p0, p2}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedSingletonIterator;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;I)V

    :goto_0
    move-object v1, v0

    :goto_1
    return-object v1

    :pswitch_2
    new-instance v0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedChildrenIterator;

    invoke-direct {v0, p0, p2}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedChildrenIterator;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;I)V

    goto :goto_0

    :pswitch_3
    new-instance v1, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$ParentIterator;

    invoke-direct {v1, p0}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$ParentIterator;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;)V

    invoke-virtual {v1, p2}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$ParentIterator;->setNodeType(I)Lorg/apache/xml/dtm/DTMAxisIterator;

    move-result-object v1

    goto :goto_1

    :pswitch_4
    new-instance v1, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedAncestorIterator;

    invoke-direct {v1, p0, p2}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedAncestorIterator;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;I)V

    goto :goto_1

    :pswitch_5
    new-instance v1, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedAncestorIterator;

    invoke-direct {v1, p0, p2}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedAncestorIterator;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;I)V

    invoke-virtual {v1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedAncestorIterator;->includeSelf()Lorg/apache/xml/dtm/DTMAxisIterator;

    move-result-object v1

    goto :goto_1

    :pswitch_6
    new-instance v1, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedAttributeIterator;

    invoke-direct {v1, p0, p2}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedAttributeIterator;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;I)V

    goto :goto_1

    :pswitch_7
    new-instance v0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedDescendantIterator;

    invoke-direct {v0, p0, p2}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedDescendantIterator;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;I)V

    goto :goto_0

    :pswitch_8
    new-instance v1, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedDescendantIterator;

    invoke-direct {v1, p0, p2}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedDescendantIterator;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;I)V

    invoke-virtual {v1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedDescendantIterator;->includeSelf()Lorg/apache/xml/dtm/DTMAxisIterator;

    move-result-object v0

    goto :goto_0

    :pswitch_9
    new-instance v0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedFollowingIterator;

    invoke-direct {v0, p0, p2}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedFollowingIterator;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;I)V

    goto :goto_0

    :pswitch_a
    new-instance v0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedPrecedingIterator;

    invoke-direct {v0, p0, p2}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedPrecedingIterator;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;I)V

    goto :goto_0

    :pswitch_b
    new-instance v0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedFollowingSiblingIterator;

    invoke-direct {v0, p0, p2}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedFollowingSiblingIterator;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;I)V

    goto :goto_0

    :pswitch_c
    new-instance v0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedPrecedingSiblingIterator;

    invoke-direct {v0, p0, p2}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedPrecedingSiblingIterator;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;I)V

    goto :goto_0

    :pswitch_d
    new-instance v0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedNamespaceIterator;

    invoke-direct {v0, p0, p2}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedNamespaceIterator;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;I)V

    goto :goto_0

    :pswitch_e
    new-instance v0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedRootIterator;

    invoke-direct {v0, p0, p2}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedRootIterator;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_2
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_b
        :pswitch_0
        :pswitch_d
        :pswitch_3
        :pswitch_a
        :pswitch_c
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_e
    .end packed-switch
.end method
