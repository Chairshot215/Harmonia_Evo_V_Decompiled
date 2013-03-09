.class public Lcom/google/android/volley/elegant/ElegantThreadSafeConnManager$ElegantBasicPooledConnAdapter;
.super Lorg/apache/http/impl/conn/tsccm/BasicPooledConnAdapter;
.source "ElegantThreadSafeConnManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/volley/elegant/ElegantThreadSafeConnManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ElegantBasicPooledConnAdapter"
.end annotation


# instance fields
.field public final startTime:J


# direct methods
.method protected constructor <init>(Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;Lorg/apache/http/impl/conn/AbstractPoolEntry;)V
    .locals 2
    .parameter "tsccm"
    .parameter "entry"

    .prologue
    .line 95
    invoke-direct {p0, p1, p2}, Lorg/apache/http/impl/conn/tsccm/BasicPooledConnAdapter;-><init>(Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;Lorg/apache/http/impl/conn/AbstractPoolEntry;)V

    .line 91
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/volley/elegant/ElegantThreadSafeConnManager$ElegantBasicPooledConnAdapter;->startTime:J

    .line 96
    return-void
.end method
