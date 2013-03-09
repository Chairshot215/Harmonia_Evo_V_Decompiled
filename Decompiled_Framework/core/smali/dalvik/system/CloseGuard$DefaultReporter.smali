.class final Ldalvik/system/CloseGuard$DefaultReporter;
.super Ljava/lang/Object;
.source "CloseGuard.java"

# interfaces
.implements Ldalvik/system/CloseGuard$Reporter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldalvik/system/CloseGuard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DefaultReporter"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Ldalvik/system/CloseGuard$1;)V
    .locals 0

    invoke-direct {p0}, Ldalvik/system/CloseGuard$DefaultReporter;-><init>()V

    return-void
.end method


# virtual methods
.method public report(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p1, p2}, Ljava/lang/System;->logW(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
