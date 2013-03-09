.class public interface abstract Lcom/google/android/gm/MessageHeaderView$MessageHeaderViewCallbacks;
.super Ljava/lang/Object;
.source "MessageHeaderView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gm/MessageHeaderView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "MessageHeaderViewCallbacks"
.end annotation


# virtual methods
.method public abstract collapseSnappyHeader(Lcom/google/android/gm/MessageHeaderView;)V
.end method

.method public abstract getAttachmentStatus(JLjava/lang/String;)Lcom/google/android/gm/provider/AttachmentStatusLoader$Result;
.end method

.method public abstract getLoadTimer()Lcom/google/android/gm/perf/Timer;
.end method

.method public abstract onHeaderCreated(J)V
.end method

.method public abstract onHeaderDrawn(J)V
.end method

.method public abstract setDisplayImagesFromSender(Ljava/lang/String;)V
.end method

.method public abstract setMessageExpanded(JJZI)V
.end method

.method public abstract setMessageSpacerHeight(JI)V
.end method

.method public abstract showExternalResources(JJ)V
.end method
