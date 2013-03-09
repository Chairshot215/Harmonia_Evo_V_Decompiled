.class final Lcom/google/android/common/base/Splitter$1;
.super Ljava/lang/Object;
.source "Splitter.java"

# interfaces
.implements Lcom/google/android/common/base/Splitter$Strategy;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/common/base/Splitter;->on(Lcom/google/android/common/base/CharMatcher;)Lcom/google/android/common/base/Splitter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$separatorMatcher:Lcom/google/android/common/base/CharMatcher;


# direct methods
.method constructor <init>(Lcom/google/android/common/base/CharMatcher;)V
    .locals 0
    .parameter

    .prologue
    .line 134
    iput-object p1, p0, Lcom/google/android/common/base/Splitter$1;->val$separatorMatcher:Lcom/google/android/common/base/CharMatcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
