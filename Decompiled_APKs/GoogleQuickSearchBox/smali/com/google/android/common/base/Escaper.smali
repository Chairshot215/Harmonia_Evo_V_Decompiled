.class public abstract Lcom/google/android/common/base/Escaper;
.super Ljava/lang/Object;
.source "Escaper.java"


# instance fields
.field private final asFunction:Lcom/google/android/common/base/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/common/base/Function",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    new-instance v0, Lcom/google/android/common/base/Escaper$1;

    invoke-direct {v0, p0}, Lcom/google/android/common/base/Escaper$1;-><init>(Lcom/google/android/common/base/Escaper;)V

    iput-object v0, p0, Lcom/google/android/common/base/Escaper;->asFunction:Lcom/google/android/common/base/Function;

    return-void
.end method
