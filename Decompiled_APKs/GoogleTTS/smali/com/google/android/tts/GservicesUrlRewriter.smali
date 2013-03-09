.class public Lcom/google/android/tts/GservicesUrlRewriter;
.super Ljava/lang/Object;
.source "GservicesUrlRewriter.java"

# interfaces
.implements Lcom/google/android/common/base/Function;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/common/base/Function",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private final mResolver:Landroid/content/ContentResolver;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "ctx"

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/tts/GservicesUrlRewriter;->mResolver:Landroid/content/ContentResolver;

    .line 18
    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 13
    check-cast p1, Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/tts/GservicesUrlRewriter;->apply(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized apply(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "input"

    .prologue
    .line 22
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/google/android/tts/GservicesUrlRewriter;->mResolver:Landroid/content/ContentResolver;

    invoke-static {v2}, Lcom/google/android/common/http/UrlRules;->getRules(Landroid/content/ContentResolver;)Lcom/google/android/common/http/UrlRules;

    move-result-object v1

    .line 23
    .local v1, rules:Lcom/google/android/common/http/UrlRules;
    invoke-virtual {v1, p1}, Lcom/google/android/common/http/UrlRules;->matchRule(Ljava/lang/String;)Lcom/google/android/common/http/UrlRules$Rule;

    move-result-object v0

    .line 24
    .local v0, rule:Lcom/google/android/common/http/UrlRules$Rule;
    invoke-virtual {v0, p1}, Lcom/google/android/common/http/UrlRules$Rule;->apply(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    monitor-exit p0

    return-object v2

    .line 22
    .end local v0           #rule:Lcom/google/android/common/http/UrlRules$Rule;
    .end local v1           #rules:Lcom/google/android/common/http/UrlRules;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method
