.class Lcom/google/android/googlequicksearchbox/CachingIconLoader$IconCache;
.super Landroid/support/v4/util/LruCache;
.source "CachingIconLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/googlequicksearchbox/CachingIconLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IconCache"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/util/LruCache",
        "<",
        "Ljava/lang/String;",
        "Lcom/google/android/googlequicksearchbox/CachingIconLoader$Entry;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/googlequicksearchbox/CachingIconLoader;


# direct methods
.method public constructor <init>(Lcom/google/android/googlequicksearchbox/CachingIconLoader;I)V
    .locals 0
    .parameter
    .parameter "maxSize"

    .prologue
    .line 73
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/CachingIconLoader$IconCache;->this$0:Lcom/google/android/googlequicksearchbox/CachingIconLoader;

    .line 74
    invoke-direct {p0, p2}, Landroid/support/v4/util/LruCache;-><init>(I)V

    .line 75
    return-void
.end method


# virtual methods
.method protected create(Ljava/lang/String;)Lcom/google/android/googlequicksearchbox/CachingIconLoader$Entry;
    .locals 2
    .parameter "drawableId"

    .prologue
    .line 80
    new-instance v0, Lcom/google/android/googlequicksearchbox/CachingIconLoader$Entry;

    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/CachingIconLoader$IconCache;->this$0:Lcom/google/android/googlequicksearchbox/CachingIconLoader;

    invoke-direct {v0, v1, p1}, Lcom/google/android/googlequicksearchbox/CachingIconLoader$Entry;-><init>(Lcom/google/android/googlequicksearchbox/CachingIconLoader;Ljava/lang/String;)V

    return-object v0
.end method

.method protected bridge synthetic create(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    check-cast p1, Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/googlequicksearchbox/CachingIconLoader$IconCache;->create(Ljava/lang/String;)Lcom/google/android/googlequicksearchbox/CachingIconLoader$Entry;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 71
    check-cast p2, Ljava/lang/String;

    .end local p2
    check-cast p3, Lcom/google/android/googlequicksearchbox/CachingIconLoader$Entry;

    .end local p3
    check-cast p4, Lcom/google/android/googlequicksearchbox/CachingIconLoader$Entry;

    .end local p4
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/android/googlequicksearchbox/CachingIconLoader$IconCache;->entryRemoved(ZLjava/lang/String;Lcom/google/android/googlequicksearchbox/CachingIconLoader$Entry;Lcom/google/android/googlequicksearchbox/CachingIconLoader$Entry;)V

    return-void
.end method

.method protected entryRemoved(ZLjava/lang/String;Lcom/google/android/googlequicksearchbox/CachingIconLoader$Entry;Lcom/google/android/googlequicksearchbox/CachingIconLoader$Entry;)V
    .locals 0
    .parameter "evicted"
    .parameter "drawableId"
    .parameter "oldValue"
    .parameter "newValue"

    .prologue
    .line 87
    return-void
.end method
