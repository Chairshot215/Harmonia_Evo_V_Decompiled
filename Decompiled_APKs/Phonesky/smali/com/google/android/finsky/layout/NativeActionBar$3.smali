.class Lcom/google/android/finsky/layout/NativeActionBar$3;
.super Ljava/lang/Object;
.source "NativeActionBar.java"

# interfaces
.implements Lcom/google/android/finsky/utils/BitmapLoader$BitmapLoadedHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/layout/NativeActionBar;->setupCorpusIcon()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/layout/NativeActionBar;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/layout/NativeActionBar;)V
    .locals 0
    .parameter

    .prologue
    .line 298
    iput-object p1, p0, Lcom/google/android/finsky/layout/NativeActionBar$3;->this$0:Lcom/google/android/finsky/layout/NativeActionBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;)V
    .locals 3
    .parameter "result"

    .prologue
    .line 301
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p0, Lcom/google/android/finsky/layout/NativeActionBar$3;->this$0:Lcom/google/android/finsky/layout/NativeActionBar;

    #getter for: Lcom/google/android/finsky/layout/NativeActionBar;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/google/android/finsky/layout/NativeActionBar;->access$400(Lcom/google/android/finsky/layout/NativeActionBar;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 303
    .local v0, actionBarIcon:Landroid/graphics/drawable/BitmapDrawable;
    iget-object v1, p0, Lcom/google/android/finsky/layout/NativeActionBar$3;->this$0:Lcom/google/android/finsky/layout/NativeActionBar;

    #getter for: Lcom/google/android/finsky/layout/NativeActionBar;->mActionBar:Landroid/app/ActionBar;
    invoke-static {v1}, Lcom/google/android/finsky/layout/NativeActionBar;->access$500(Lcom/google/android/finsky/layout/NativeActionBar;)Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/ActionBar;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 304
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 298
    check-cast p1, Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/layout/NativeActionBar$3;->onResponse(Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;)V

    return-void
.end method
