.class public Lcom/android/i18n/phonenumbers/RegexCache;
.super Ljava/lang/Object;
.source "RegexCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/i18n/phonenumbers/RegexCache$LRUCache;
    }
.end annotation


# instance fields
.field private cache:Lcom/android/i18n/phonenumbers/RegexCache$LRUCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/i18n/phonenumbers/RegexCache$LRUCache",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/regex/Pattern;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/i18n/phonenumbers/RegexCache$LRUCache;

    invoke-direct {v0, p1}, Lcom/android/i18n/phonenumbers/RegexCache$LRUCache;-><init>(I)V

    iput-object v0, p0, Lcom/android/i18n/phonenumbers/RegexCache;->cache:Lcom/android/i18n/phonenumbers/RegexCache$LRUCache;

    return-void
.end method


# virtual methods
.method containsRegex(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/i18n/phonenumbers/RegexCache;->cache:Lcom/android/i18n/phonenumbers/RegexCache$LRUCache;

    invoke-virtual {v0, p1}, Lcom/android/i18n/phonenumbers/RegexCache$LRUCache;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getPatternForRegex(Ljava/lang/String;)Ljava/util/regex/Pattern;
    .locals 2

    iget-object v1, p0, Lcom/android/i18n/phonenumbers/RegexCache;->cache:Lcom/android/i18n/phonenumbers/RegexCache$LRUCache;

    invoke-virtual {v1, p1}, Lcom/android/i18n/phonenumbers/RegexCache$LRUCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/regex/Pattern;

    if-nez v0, :cond_0

    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iget-object v1, p0, Lcom/android/i18n/phonenumbers/RegexCache;->cache:Lcom/android/i18n/phonenumbers/RegexCache$LRUCache;

    invoke-virtual {v1, p1, v0}, Lcom/android/i18n/phonenumbers/RegexCache$LRUCache;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    return-object v0
.end method
