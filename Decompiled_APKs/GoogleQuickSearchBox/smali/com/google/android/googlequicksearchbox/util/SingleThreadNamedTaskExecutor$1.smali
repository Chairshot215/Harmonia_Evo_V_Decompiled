.class final Lcom/google/android/googlequicksearchbox/util/SingleThreadNamedTaskExecutor$1;
.super Ljava/lang/Object;
.source "SingleThreadNamedTaskExecutor.java"

# interfaces
.implements Lcom/google/android/googlequicksearchbox/util/Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/googlequicksearchbox/util/SingleThreadNamedTaskExecutor;->factory(Ljava/util/concurrent/ThreadFactory;)Lcom/google/android/googlequicksearchbox/util/Factory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/googlequicksearchbox/util/Factory",
        "<",
        "Lcom/google/android/googlequicksearchbox/util/NamedTaskExecutor;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$threadFactory:Ljava/util/concurrent/ThreadFactory;


# direct methods
.method constructor <init>(Ljava/util/concurrent/ThreadFactory;)V
    .locals 0
    .parameter

    .prologue
    .line 98
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/util/SingleThreadNamedTaskExecutor$1;->val$threadFactory:Ljava/util/concurrent/ThreadFactory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create()Lcom/google/android/googlequicksearchbox/util/NamedTaskExecutor;
    .locals 2

    .prologue
    .line 100
    new-instance v0, Lcom/google/android/googlequicksearchbox/util/SingleThreadNamedTaskExecutor;

    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/util/SingleThreadNamedTaskExecutor$1;->val$threadFactory:Ljava/util/concurrent/ThreadFactory;

    invoke-direct {v0, v1}, Lcom/google/android/googlequicksearchbox/util/SingleThreadNamedTaskExecutor;-><init>(Ljava/util/concurrent/ThreadFactory;)V

    return-object v0
.end method

.method public bridge synthetic create()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 98
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/util/SingleThreadNamedTaskExecutor$1;->create()Lcom/google/android/googlequicksearchbox/util/NamedTaskExecutor;

    move-result-object v0

    return-object v0
.end method
