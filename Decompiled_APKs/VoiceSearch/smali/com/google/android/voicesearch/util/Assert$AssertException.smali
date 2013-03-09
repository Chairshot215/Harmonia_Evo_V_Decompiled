.class Lcom/google/android/voicesearch/util/Assert$AssertException;
.super Ljava/lang/RuntimeException;
.source "Assert.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/voicesearch/util/Assert;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AssertException"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x3f9e95d5e9eb1298L


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "msg"

    .prologue
    .line 91
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 92
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lcom/google/android/voicesearch/util/Assert$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lcom/google/android/voicesearch/util/Assert$AssertException;-><init>(Ljava/lang/String;)V

    return-void
.end method
