.class public interface abstract Lorg/apache/xml/dtm/DTMIterator;
.super Ljava/lang/Object;
.source "DTMIterator.java"


# static fields
.field public static final FILTER_ACCEPT:S = 0x1s

.field public static final FILTER_REJECT:S = 0x2s

.field public static final FILTER_SKIP:S = 0x3s


# virtual methods
.method public abstract allowDetachToRelease(Z)V
.end method

.method public abstract clone()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation
.end method

.method public abstract cloneWithReset()Lorg/apache/xml/dtm/DTMIterator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation
.end method

.method public abstract detach()V
.end method

.method public abstract getAxis()I
.end method

.method public abstract getCurrentNode()I
.end method

.method public abstract getCurrentPos()I
.end method

.method public abstract getDTM(I)Lorg/apache/xml/dtm/DTM;
.end method

.method public abstract getDTMManager()Lorg/apache/xml/dtm/DTMManager;
.end method

.method public abstract getExpandEntityReferences()Z
.end method

.method public abstract getLength()I
.end method

.method public abstract getRoot()I
.end method

.method public abstract getWhatToShow()I
.end method

.method public abstract isDocOrdered()Z
.end method

.method public abstract isFresh()Z
.end method

.method public abstract isMutable()Z
.end method

.method public abstract item(I)I
.end method

.method public abstract nextNode()I
.end method

.method public abstract previousNode()I
.end method

.method public abstract reset()V
.end method

.method public abstract runTo(I)V
.end method

.method public abstract setCurrentPos(I)V
.end method

.method public abstract setItem(II)V
.end method

.method public abstract setRoot(ILjava/lang/Object;)V
.end method

.method public abstract setShouldCacheNodes(Z)V
.end method
