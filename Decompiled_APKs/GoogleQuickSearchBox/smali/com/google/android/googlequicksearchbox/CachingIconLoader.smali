.class public Lcom/google/android/googlequicksearchbox/CachingIconLoader;
.super Ljava/lang/Object;
.source "CachingIconLoader.java"

# interfaces
.implements Lcom/google/android/googlequicksearchbox/IconLoader;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/googlequicksearchbox/CachingIconLoader$Entry;,
        Lcom/google/android/googlequicksearchbox/CachingIconLoader$IconCache;
    }
.end annotation


# instance fields
.field private final mIconCache:Lcom/google/android/googlequicksearchbox/CachingIconLoader$IconCache;

.field private final mWrapped:Lcom/google/android/googlequicksearchbox/IconLoader;


# direct methods
.method public constructor <init>(Lcom/google/android/googlequicksearchbox/IconLoader;)V
    .locals 2
    .parameter "wrapped"

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/CachingIconLoader;->mWrapped:Lcom/google/android/googlequicksearchbox/IconLoader;

    .line 56
    new-instance v0, Lcom/google/android/googlequicksearchbox/CachingIconLoader$IconCache;

    const/16 v1, 0x32

    invoke-direct {v0, p0, v1}, Lcom/google/android/googlequicksearchbox/CachingIconLoader$IconCache;-><init>(Lcom/google/android/googlequicksearchbox/CachingIconLoader;I)V

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/CachingIconLoader;->mIconCache:Lcom/google/android/googlequicksearchbox/CachingIconLoader$IconCache;

    .line 57
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/googlequicksearchbox/CachingIconLoader;)Lcom/google/android/googlequicksearchbox/IconLoader;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/CachingIconLoader;->mWrapped:Lcom/google/android/googlequicksearchbox/IconLoader;

    return-object v0
.end method


# virtual methods
.method public getIcon(Ljava/lang/String;)Lcom/google/android/googlequicksearchbox/util/NowOrLater;
    .locals 3
    .parameter "drawableId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/googlequicksearchbox/util/NowOrLater",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 60
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "0"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 61
    :cond_0
    new-instance v1, Lcom/google/android/googlequicksearchbox/util/Now;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/android/googlequicksearchbox/util/Now;-><init>(Ljava/lang/Object;)V

    .line 64
    :goto_0
    return-object v1

    .line 63
    :cond_1
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/CachingIconLoader;->mIconCache:Lcom/google/android/googlequicksearchbox/CachingIconLoader$IconCache;

    invoke-virtual {v1, p1}, Lcom/google/android/googlequicksearchbox/CachingIconLoader$IconCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/googlequicksearchbox/CachingIconLoader$Entry;

    .line 64
    .local v0, entry:Lcom/google/android/googlequicksearchbox/CachingIconLoader$Entry;
    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/CachingIconLoader$Entry;->getDrawable()Lcom/google/android/googlequicksearchbox/util/NowOrLater;

    move-result-object v1

    goto :goto_0
.end method

.method public getIconUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 1
    .parameter "drawableId"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/CachingIconLoader;->mWrapped:Lcom/google/android/googlequicksearchbox/IconLoader;

    invoke-interface {v0, p1}, Lcom/google/android/googlequicksearchbox/IconLoader;->getIconUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method
