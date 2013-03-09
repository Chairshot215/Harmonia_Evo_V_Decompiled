.class public abstract Lcom/android/mms/dom/smil/ElementParallelTimeContainerImpl;
.super Lcom/android/mms/dom/smil/ElementTimeContainerImpl;
.source "ElementParallelTimeContainerImpl.java"

# interfaces
.implements Lorg/w3c/dom/smil/ElementParallelTimeContainer;


# static fields
.field private static final ENDSYNC_ALL:Ljava/lang/String; = "all"

.field private static final ENDSYNC_ATTRIBUTE_NAME:Ljava/lang/String; = "endsync"

.field private static final ENDSYNC_FIRST:Ljava/lang/String; = "first"

.field private static final ENDSYNC_LAST:Ljava/lang/String; = "last"

.field private static final ENDSYNC_MEDIA:Ljava/lang/String; = "media"


# direct methods
.method constructor <init>(Lorg/w3c/dom/smil/SMILElement;)V
    .locals 0
    .parameter "element"

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/android/mms/dom/smil/ElementTimeContainerImpl;-><init>(Lorg/w3c/dom/smil/SMILElement;)V

    .line 47
    return-void
.end method


# virtual methods
.method public getActiveChildrenAt(F)Lorg/w3c/dom/NodeList;
    .locals 22
    .parameter "instant"

    .prologue
    .line 115
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 116
    .local v3, activeChildren:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/w3c/dom/Node;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/dom/smil/ElementParallelTimeContainerImpl;->getTimeChildren()Lorg/w3c/dom/NodeList;

    move-result-object v7

    .line 117
    .local v7, children:Lorg/w3c/dom/NodeList;
    invoke-interface {v7}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v8

    .line 118
    .local v8, childrenLen:I
    const/4 v11, 0x0

    .local v11, i:I
    :goto_0
    if-ge v11, v8, :cond_5

    .line 119
    const-wide/16 v14, 0x0

    .line 120
    .local v14, maxOffset:D
    const/4 v2, 0x0

    .line 121
    .local v2, active:Z
    invoke-interface {v7, v11}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v6

    check-cast v6, Lorg/w3c/dom/smil/ElementTime;

    .line 123
    .local v6, child:Lorg/w3c/dom/smil/ElementTime;
    invoke-interface {v6}, Lorg/w3c/dom/smil/ElementTime;->getBegin()Lorg/w3c/dom/smil/TimeList;

    move-result-object v5

    .line 124
    .local v5, beginList:Lorg/w3c/dom/smil/TimeList;
    invoke-interface {v5}, Lorg/w3c/dom/smil/TimeList;->getLength()I

    move-result v13

    .line 125
    .local v13, len:I
    const/4 v12, 0x0

    .local v12, j:I
    :goto_1
    if-ge v12, v13, :cond_1

    .line 126
    invoke-interface {v5, v12}, Lorg/w3c/dom/smil/TimeList;->item(I)Lorg/w3c/dom/smil/Time;

    move-result-object v4

    .line 127
    .local v4, begin:Lorg/w3c/dom/smil/Time;
    invoke-interface {v4}, Lorg/w3c/dom/smil/Time;->getResolved()Z

    move-result v18

    if-eqz v18, :cond_0

    .line 128
    invoke-interface {v4}, Lorg/w3c/dom/smil/Time;->getResolvedOffset()D

    move-result-wide v18

    const-wide v20, 0x408f400000000000L

    mul-double v16, v18, v20

    .line 129
    .local v16, resolvedOffset:D
    move/from16 v0, p1

    float-to-double v0, v0

    move-wide/from16 v18, v0

    cmpg-double v18, v16, v18

    if-gtz v18, :cond_0

    cmpl-double v18, v16, v14

    if-ltz v18, :cond_0

    .line 130
    move-wide/from16 v14, v16

    .line 131
    const/4 v2, 0x1

    .line 125
    .end local v16           #resolvedOffset:D
    :cond_0
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 136
    .end local v4           #begin:Lorg/w3c/dom/smil/Time;
    :cond_1
    invoke-interface {v6}, Lorg/w3c/dom/smil/ElementTime;->getEnd()Lorg/w3c/dom/smil/TimeList;

    move-result-object v10

    .line 137
    .local v10, endList:Lorg/w3c/dom/smil/TimeList;
    invoke-interface {v10}, Lorg/w3c/dom/smil/TimeList;->getLength()I

    move-result v13

    .line 138
    const/4 v12, 0x0

    :goto_2
    if-ge v12, v13, :cond_3

    .line 139
    invoke-interface {v10, v12}, Lorg/w3c/dom/smil/TimeList;->item(I)Lorg/w3c/dom/smil/Time;

    move-result-object v9

    .line 140
    .local v9, end:Lorg/w3c/dom/smil/Time;
    invoke-interface {v9}, Lorg/w3c/dom/smil/Time;->getResolved()Z

    move-result v18

    if-eqz v18, :cond_2

    .line 141
    invoke-interface {v9}, Lorg/w3c/dom/smil/Time;->getResolvedOffset()D

    move-result-wide v18

    const-wide v20, 0x408f400000000000L

    mul-double v16, v18, v20

    .line 142
    .restart local v16       #resolvedOffset:D
    move/from16 v0, p1

    float-to-double v0, v0

    move-wide/from16 v18, v0

    cmpg-double v18, v16, v18

    if-gtz v18, :cond_2

    cmpl-double v18, v16, v14

    if-ltz v18, :cond_2

    .line 143
    move-wide/from16 v14, v16

    .line 144
    const/4 v2, 0x0

    .line 138
    .end local v16           #resolvedOffset:D
    :cond_2
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 149
    .end local v9           #end:Lorg/w3c/dom/smil/Time;
    :cond_3
    if-eqz v2, :cond_4

    .line 150
    check-cast v6, Lorg/w3c/dom/Node;

    .end local v6           #child:Lorg/w3c/dom/smil/ElementTime;
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 118
    :cond_4
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 153
    .end local v2           #active:Z
    .end local v5           #beginList:Lorg/w3c/dom/smil/TimeList;
    .end local v10           #endList:Lorg/w3c/dom/smil/TimeList;
    .end local v12           #j:I
    .end local v13           #len:I
    .end local v14           #maxOffset:D
    :cond_5
    new-instance v18, Lcom/android/mms/dom/NodeListImpl;

    move-object/from16 v0, v18

    invoke-direct {v0, v3}, Lcom/android/mms/dom/NodeListImpl;-><init>(Ljava/util/ArrayList;)V

    return-object v18
.end method

.method public getDur()F
    .locals 2

    .prologue
    .line 78
    invoke-super {p0}, Lcom/android/mms/dom/smil/ElementTimeContainerImpl;->getDur()F

    move-result v0

    .line 79
    .local v0, dur:F
    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-nez v1, :cond_0

    .line 80
    invoke-virtual {p0}, Lcom/android/mms/dom/smil/ElementParallelTimeContainerImpl;->getImplicitDuration()F

    move-result v0

    .line 82
    :cond_0
    return v0
.end method

.method public getEndSync()Ljava/lang/String;
    .locals 3

    .prologue
    .line 50
    iget-object v1, p0, Lcom/android/mms/dom/smil/ElementTimeImpl;->mSmilElement:Lorg/w3c/dom/smil/SMILElement;

    const-string v2, "endsync"

    invoke-interface {v1, v2}, Lorg/w3c/dom/smil/SMILElement;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 51
    .local v0, endsync:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    .line 52
    :cond_0
    const-string v1, "last"

    invoke-virtual {p0, v1}, Lcom/android/mms/dom/smil/ElementParallelTimeContainerImpl;->setEndSync(Ljava/lang/String;)V

    .line 53
    const-string v0, "last"

    .line 63
    .end local v0           #endsync:Ljava/lang/String;
    :cond_1
    :goto_0
    return-object v0

    .line 55
    .restart local v0       #endsync:Ljava/lang/String;
    :cond_2
    const-string v1, "first"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "last"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "all"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "media"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 62
    const-string v1, "last"

    invoke-virtual {p0, v1}, Lcom/android/mms/dom/smil/ElementParallelTimeContainerImpl;->setEndSync(Ljava/lang/String;)V

    .line 63
    const-string v0, "last"

    goto :goto_0
.end method

.method public getImplicitDuration()F
    .locals 10

    .prologue
    .line 86
    const/high16 v2, -0x4080

    .line 87
    .local v2, dur:F
    const-string v8, "last"

    invoke-virtual {p0}, Lcom/android/mms/dom/smil/ElementParallelTimeContainerImpl;->getEndSync()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 88
    invoke-virtual {p0}, Lcom/android/mms/dom/smil/ElementParallelTimeContainerImpl;->getTimeChildren()Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 89
    .local v1, children:Lorg/w3c/dom/NodeList;
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v8

    if-ge v6, v8, :cond_3

    .line 90
    invoke-interface {v1, v6}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/smil/ElementTime;

    .line 91
    .local v0, child:Lorg/w3c/dom/smil/ElementTime;
    invoke-interface {v0}, Lorg/w3c/dom/smil/ElementTime;->getEnd()Lorg/w3c/dom/smil/TimeList;

    move-result-object v5

    .line 92
    .local v5, endTimeList:Lorg/w3c/dom/smil/TimeList;
    const/4 v7, 0x0

    .local v7, j:I
    :goto_1
    invoke-interface {v5}, Lorg/w3c/dom/smil/TimeList;->getLength()I

    move-result v8

    if-ge v7, v8, :cond_2

    .line 93
    invoke-interface {v5, v7}, Lorg/w3c/dom/smil/TimeList;->item(I)Lorg/w3c/dom/smil/Time;

    move-result-object v4

    .line 94
    .local v4, endTime:Lorg/w3c/dom/smil/Time;
    invoke-interface {v4}, Lorg/w3c/dom/smil/Time;->getTimeType()S

    move-result v8

    if-nez v8, :cond_0

    .line 96
    const/high16 v8, -0x4080

    .line 106
    .end local v0           #child:Lorg/w3c/dom/smil/ElementTime;
    .end local v1           #children:Lorg/w3c/dom/NodeList;
    .end local v4           #endTime:Lorg/w3c/dom/smil/Time;
    .end local v5           #endTimeList:Lorg/w3c/dom/smil/TimeList;
    .end local v6           #i:I
    .end local v7           #j:I
    :goto_2
    return v8

    .line 98
    .restart local v0       #child:Lorg/w3c/dom/smil/ElementTime;
    .restart local v1       #children:Lorg/w3c/dom/NodeList;
    .restart local v4       #endTime:Lorg/w3c/dom/smil/Time;
    .restart local v5       #endTimeList:Lorg/w3c/dom/smil/TimeList;
    .restart local v6       #i:I
    .restart local v7       #j:I
    :cond_0
    invoke-interface {v4}, Lorg/w3c/dom/smil/Time;->getResolved()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 99
    invoke-interface {v4}, Lorg/w3c/dom/smil/Time;->getResolvedOffset()D

    move-result-wide v8

    double-to-float v3, v8

    .line 100
    .local v3, end:F
    cmpl-float v8, v3, v2

    if-lez v8, :cond_1

    move v2, v3

    .line 92
    .end local v3           #end:F
    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 89
    .end local v4           #endTime:Lorg/w3c/dom/smil/Time;
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .end local v0           #child:Lorg/w3c/dom/smil/ElementTime;
    .end local v1           #children:Lorg/w3c/dom/NodeList;
    .end local v5           #endTimeList:Lorg/w3c/dom/smil/TimeList;
    .end local v6           #i:I
    .end local v7           #j:I
    :cond_3
    move v8, v2

    .line 106
    goto :goto_2
.end method

.method public setEndSync(Ljava/lang/String;)V
    .locals 4
    .parameter "endSync"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 67
    const-string v0, "first"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "last"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "all"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "media"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/android/mms/dom/smil/ElementTimeImpl;->mSmilElement:Lorg/w3c/dom/smil/SMILElement;

    const-string v1, "endsync"

    invoke-interface {v0, v1, p1}, Lorg/w3c/dom/smil/SMILElement;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    return-void

    .line 71
    :cond_1
    new-instance v0, Lorg/w3c/dom/DOMException;

    const/16 v1, 0x9

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported endsync value"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v0
.end method
