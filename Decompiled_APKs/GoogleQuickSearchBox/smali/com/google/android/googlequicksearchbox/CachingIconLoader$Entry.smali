.class Lcom/google/android/googlequicksearchbox/CachingIconLoader$Entry;
.super Lcom/google/android/googlequicksearchbox/util/CachedLater;
.source "CachingIconLoader.java"

# interfaces
.implements Lcom/google/android/googlequicksearchbox/util/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/googlequicksearchbox/CachingIconLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Entry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/googlequicksearchbox/util/CachedLater",
        "<",
        "Landroid/graphics/drawable/Drawable$ConstantState;",
        ">;",
        "Lcom/google/android/googlequicksearchbox/util/Consumer",
        "<",
        "Landroid/graphics/drawable/Drawable;",
        ">;"
    }
.end annotation


# instance fields
.field private final mDrawable:Lcom/google/android/googlequicksearchbox/util/NowOrLater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/googlequicksearchbox/util/NowOrLater",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private final mDrawableId:Ljava/lang/String;

.field final synthetic this$0:Lcom/google/android/googlequicksearchbox/CachingIconLoader;


# direct methods
.method public constructor <init>(Lcom/google/android/googlequicksearchbox/CachingIconLoader;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter "drawableId"

    .prologue
    .line 96
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/CachingIconLoader$Entry;->this$0:Lcom/google/android/googlequicksearchbox/CachingIconLoader;

    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/util/CachedLater;-><init>()V

    .line 97
    iput-object p2, p0, Lcom/google/android/googlequicksearchbox/CachingIconLoader$Entry;->mDrawableId:Ljava/lang/String;

    .line 98
    new-instance v0, Lcom/google/android/googlequicksearchbox/CachingIconLoader$Entry$1;

    invoke-direct {v0, p0, p0, p1}, Lcom/google/android/googlequicksearchbox/CachingIconLoader$Entry$1;-><init>(Lcom/google/android/googlequicksearchbox/CachingIconLoader$Entry;Lcom/google/android/googlequicksearchbox/util/NowOrLater;Lcom/google/android/googlequicksearchbox/CachingIconLoader;)V

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/CachingIconLoader$Entry;->mDrawable:Lcom/google/android/googlequicksearchbox/util/NowOrLater;

    .line 104
    return-void
.end method


# virtual methods
.method public consume(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .parameter "value"

    .prologue
    .line 125
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/google/android/googlequicksearchbox/CachingIconLoader$Entry;->store(Ljava/lang/Object;)V

    .line 126
    const/4 v0, 0x1

    return v0

    .line 125
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic consume(Ljava/lang/Object;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    check-cast p1, Landroid/graphics/drawable/Drawable;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/googlequicksearchbox/CachingIconLoader$Entry;->consume(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    return v0
.end method

.method protected create()V
    .locals 3

    .prologue
    .line 120
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/CachingIconLoader$Entry;->this$0:Lcom/google/android/googlequicksearchbox/CachingIconLoader;

    #getter for: Lcom/google/android/googlequicksearchbox/CachingIconLoader;->mWrapped:Lcom/google/android/googlequicksearchbox/IconLoader;
    invoke-static {v1}, Lcom/google/android/googlequicksearchbox/CachingIconLoader;->access$000(Lcom/google/android/googlequicksearchbox/CachingIconLoader;)Lcom/google/android/googlequicksearchbox/IconLoader;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/CachingIconLoader$Entry;->mDrawableId:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/google/android/googlequicksearchbox/IconLoader;->getIcon(Ljava/lang/String;)Lcom/google/android/googlequicksearchbox/util/NowOrLater;

    move-result-object v0

    .line 121
    .local v0, drawable:Lcom/google/android/googlequicksearchbox/util/NowOrLater;,"Lcom/google/android/googlequicksearchbox/util/NowOrLater<Landroid/graphics/drawable/Drawable;>;"
    invoke-interface {v0, p0}, Lcom/google/android/googlequicksearchbox/util/NowOrLater;->getLater(Lcom/google/android/googlequicksearchbox/util/Consumer;)V

    .line 122
    return-void
.end method

.method public getDrawable()Lcom/google/android/googlequicksearchbox/util/NowOrLater;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/googlequicksearchbox/util/NowOrLater",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 107
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/CachingIconLoader$Entry;->prefetch()V

    .line 115
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/CachingIconLoader$Entry;->mDrawable:Lcom/google/android/googlequicksearchbox/util/NowOrLater;

    return-object v0
.end method
