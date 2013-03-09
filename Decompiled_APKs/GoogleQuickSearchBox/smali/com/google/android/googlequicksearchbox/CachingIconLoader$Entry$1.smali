.class Lcom/google/android/googlequicksearchbox/CachingIconLoader$Entry$1;
.super Lcom/google/android/googlequicksearchbox/util/NowOrLaterWrapper;
.source "CachingIconLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/googlequicksearchbox/CachingIconLoader$Entry;-><init>(Lcom/google/android/googlequicksearchbox/CachingIconLoader;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/googlequicksearchbox/util/NowOrLaterWrapper",
        "<",
        "Landroid/graphics/drawable/Drawable$ConstantState;",
        "Landroid/graphics/drawable/Drawable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/googlequicksearchbox/CachingIconLoader$Entry;

.field final synthetic val$this$0:Lcom/google/android/googlequicksearchbox/CachingIconLoader;


# direct methods
.method constructor <init>(Lcom/google/android/googlequicksearchbox/CachingIconLoader$Entry;Lcom/google/android/googlequicksearchbox/util/NowOrLater;Lcom/google/android/googlequicksearchbox/CachingIconLoader;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 98
    .local p2, x0:Lcom/google/android/googlequicksearchbox/util/NowOrLater;,"Lcom/google/android/googlequicksearchbox/util/NowOrLater<Landroid/graphics/drawable/Drawable$ConstantState;>;"
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/CachingIconLoader$Entry$1;->this$1:Lcom/google/android/googlequicksearchbox/CachingIconLoader$Entry;

    iput-object p3, p0, Lcom/google/android/googlequicksearchbox/CachingIconLoader$Entry$1;->val$this$0:Lcom/google/android/googlequicksearchbox/CachingIconLoader;

    invoke-direct {p0, p2}, Lcom/google/android/googlequicksearchbox/util/NowOrLaterWrapper;-><init>(Lcom/google/android/googlequicksearchbox/util/NowOrLater;)V

    return-void
.end method


# virtual methods
.method public get(Landroid/graphics/drawable/Drawable$ConstantState;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "value"

    .prologue
    .line 101
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 98
    check-cast p1, Landroid/graphics/drawable/Drawable$ConstantState;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/googlequicksearchbox/CachingIconLoader$Entry$1;->get(Landroid/graphics/drawable/Drawable$ConstantState;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method
