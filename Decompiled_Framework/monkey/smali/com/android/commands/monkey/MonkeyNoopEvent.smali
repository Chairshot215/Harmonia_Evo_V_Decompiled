.class public Lcom/android/commands/monkey/MonkeyNoopEvent;
.super Lcom/android/commands/monkey/MonkeyEvent;
.source "MonkeyNoopEvent.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x6

    invoke-direct {p0, v0}, Lcom/android/commands/monkey/MonkeyEvent;-><init>(I)V

    return-void
.end method


# virtual methods
.method public injectEvent(Landroid/view/IWindowManager;Landroid/app/IActivityManager;I)I
    .locals 3

    const/4 v2, 0x1

    if-le p3, v2, :cond_0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "NOOP"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    return v2
.end method
