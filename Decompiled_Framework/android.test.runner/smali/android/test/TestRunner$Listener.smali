.class public interface abstract Landroid/test/TestRunner$Listener;
.super Ljava/lang/Object;
.source "TestRunner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/test/TestRunner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation


# virtual methods
.method public abstract failed(Ljava/lang/String;Ljava/lang/Throwable;)V
.end method

.method public abstract finished(Ljava/lang/String;)V
.end method

.method public abstract passed(Ljava/lang/String;)V
.end method

.method public abstract performance(Ljava/lang/String;JILjava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "JI",
            "Ljava/util/List",
            "<",
            "Landroid/test/TestRunner$IntermediateTime;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract started(Ljava/lang/String;)V
.end method
