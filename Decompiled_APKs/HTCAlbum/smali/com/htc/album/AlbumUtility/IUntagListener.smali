.class public interface abstract Lcom/htc/album/AlbumUtility/IUntagListener;
.super Ljava/lang/Object;
.source "IUntagListener.java"


# static fields
.field public static final UNTAG_ALL:I = 0x2

.field public static final UNTAG_SELF:I = 0x1

.field public static final UNTAG_SPECIFIC:I = 0x0

.field public static final UNTAG_UNKNOWN:I = -0x1


# virtual methods
.method public abstract isUntagged()Z
.end method

.method public abstract onBegin()V
.end method

.method public abstract onEnd()V
.end method
