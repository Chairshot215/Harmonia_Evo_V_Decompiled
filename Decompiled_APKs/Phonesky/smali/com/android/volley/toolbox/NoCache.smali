.class public Lcom/android/volley/toolbox/NoCache;
.super Ljava/lang/Object;
.source "NoCache.java"

# interfaces
.implements Lcom/android/volley/Cache;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 0

    .prologue
    .line 27
    return-void
.end method

.method public get(Ljava/lang/String;)Lcom/android/volley/Cache$Entry;
    .locals 1
    .parameter "key"

    .prologue
    .line 31
    const/4 v0, 0x0

    return-object v0
.end method

.method public initialize()V
    .locals 0

    .prologue
    .line 48
    return-void
.end method

.method public invalidate(Ljava/lang/String;Z)V
    .locals 0
    .parameter "key"
    .parameter "fullExpire"

    .prologue
    .line 40
    return-void
.end method

.method public put(Ljava/lang/String;Lcom/android/volley/Cache$Entry;)V
    .locals 0
    .parameter "key"
    .parameter "entry"

    .prologue
    .line 36
    return-void
.end method
