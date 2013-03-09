.class public Ltwitter4j/Version;
.super Ljava/lang/Object;
.source "Version.java"


# static fields
.field private static final TITLE:Ljava/lang/String; = "Twitter4J"

.field private static final VERSION:Ljava/lang/String; = "2.0.10"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    const-string v0, "2.0.10"

    return-object v0
.end method

.method public static main([Ljava/lang/String;)V
    .locals 2
    .parameter "args"

    .prologue
    .line 40
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Twitter4J 2.0.10"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 41
    return-void
.end method
