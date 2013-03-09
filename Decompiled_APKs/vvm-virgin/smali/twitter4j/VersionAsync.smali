.class public final Ltwitter4j/VersionAsync;
.super Ljava/lang/Object;
.source "VersionAsync.java"


# static fields
.field private static final TITLE:Ljava/lang/String; = "Twitter4J Async API"

.field private static final VERSION:Ljava/lang/String; = "2.2.1"


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public static getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    const-string v0, "2.2.1"

    return-object v0
.end method

.method public static main([Ljava/lang/String;)V
    .locals 2
    .parameter "args"

    .prologue
    .line 40
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Twitter4J Async API 2.2.1"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 41
    return-void
.end method
