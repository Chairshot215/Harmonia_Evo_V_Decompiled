.class public Lcom/google/android/googlequicksearchbox/google/UriRewriter;
.super Ljava/lang/Object;
.source "UriRewriter.java"

# interfaces
.implements Lcom/google/android/googlequicksearchbox/util/HttpHelper$UrlRewriter;


# instance fields
.field private final mResolver:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/google/UriRewriter;->mResolver:Landroid/content/ContentResolver;

    .line 34
    return-void
.end method


# virtual methods
.method public rewrite(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "original"

    .prologue
    .line 38
    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/google/UriRewriter;->mResolver:Landroid/content/ContentResolver;

    invoke-static {v2}, Lcom/google/android/common/http/UrlRules;->getRules(Landroid/content/ContentResolver;)Lcom/google/android/common/http/UrlRules;

    move-result-object v1

    .line 39
    .local v1, rules:Lcom/google/android/common/http/UrlRules;
    invoke-virtual {v1, p1}, Lcom/google/android/common/http/UrlRules;->matchRule(Ljava/lang/String;)Lcom/google/android/common/http/UrlRules$Rule;

    move-result-object v0

    .line 40
    .local v0, rule:Lcom/google/android/common/http/UrlRules$Rule;
    invoke-virtual {v0, p1}, Lcom/google/android/common/http/UrlRules$Rule;->apply(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
