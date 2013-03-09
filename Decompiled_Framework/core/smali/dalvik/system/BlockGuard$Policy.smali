.class public interface abstract Ldalvik/system/BlockGuard$Policy;
.super Ljava/lang/Object;
.source "BlockGuard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldalvik/system/BlockGuard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Policy"
.end annotation


# virtual methods
.method public abstract getPolicyMask()I
.end method

.method public abstract onNetwork()V
.end method

.method public abstract onReadFromDisk()V
.end method

.method public abstract onWriteToDisk()V
.end method
