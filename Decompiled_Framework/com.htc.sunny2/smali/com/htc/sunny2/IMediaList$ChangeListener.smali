.class public interface abstract Lcom/htc/sunny2/IMediaList$ChangeListener;
.super Ljava/lang/Object;
.source "IMediaList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/sunny2/IMediaList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ChangeListener"
.end annotation


# static fields
.field public static final FLAG_CHECK_DATA_UPDATE:I = 0x1

.field public static final FLAG_DRM_RIGHT_CONSUMED:I = 0x10

.field public static final FLAG_DRM_RIGHT_EXPIRED:I = 0x20

.field public static final FLAG_KEEP_CURRENT_SELECTION:I = 0x2


# virtual methods
.method public abstract onMediaItemRefresh(II)V
.end method

.method public abstract onMediaListChange(Lcom/htc/sunny2/IMediaList;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/sunny2/IMediaList",
            "<*>;I)V"
        }
    .end annotation
.end method

.method public abstract onMediaListRefresh(I)V
.end method
