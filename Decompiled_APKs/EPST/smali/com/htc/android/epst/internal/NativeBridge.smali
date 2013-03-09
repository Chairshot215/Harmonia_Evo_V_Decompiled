.class public Lcom/htc/android/epst/internal/NativeBridge;
.super Ljava/lang/Object;
.source "NativeBridge.java"


# static fields
.field private static final FILENAME:Ljava/lang/String; = "checksum"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 12
    :try_start_0
    const-string v1, "checksum"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    .local v0, err:Ljava/lang/UnsatisfiedLinkError;
    :goto_0
    return-void

    .line 14
    .end local v0           #err:Ljava/lang/UnsatisfiedLinkError;
    :catch_0
    move-exception v0

    .line 15
    .restart local v0       #err:Ljava/lang/UnsatisfiedLinkError;
    invoke-virtual {v0}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public native checkAKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method
