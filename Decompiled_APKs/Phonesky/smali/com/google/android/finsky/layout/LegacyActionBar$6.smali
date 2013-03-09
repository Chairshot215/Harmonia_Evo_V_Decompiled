.class Lcom/google/android/finsky/layout/LegacyActionBar$6;
.super Ljava/lang/Object;
.source "LegacyActionBar.java"

# interfaces
.implements Lcom/google/android/finsky/utils/BitmapLoader$BitmapLoadedHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/layout/LegacyActionBar;->syncActionBar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/layout/LegacyActionBar;

.field final synthetic val$corpusIcon:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/layout/LegacyActionBar;Landroid/widget/ImageView;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 258
    iput-object p1, p0, Lcom/google/android/finsky/layout/LegacyActionBar$6;->this$0:Lcom/google/android/finsky/layout/LegacyActionBar;

    iput-object p2, p0, Lcom/google/android/finsky/layout/LegacyActionBar$6;->val$corpusIcon:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;)V
    .locals 2
    .parameter "result"

    .prologue
    .line 261
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 262
    .local v0, actionBarIcon:Landroid/graphics/drawable/BitmapDrawable;
    iget-object v1, p0, Lcom/google/android/finsky/layout/LegacyActionBar$6;->val$corpusIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 263
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 258
    check-cast p1, Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/layout/LegacyActionBar$6;->onResponse(Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;)V

    return-void
.end method
