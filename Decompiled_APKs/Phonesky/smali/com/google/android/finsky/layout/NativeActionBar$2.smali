.class Lcom/google/android/finsky/layout/NativeActionBar$2;
.super Ljava/lang/Object;
.source "NativeActionBar.java"

# interfaces
.implements Lcom/google/android/finsky/utils/WishlistHelper$WishlistStatusListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/layout/NativeActionBar;->wishlistButtonClicked(Landroid/app/Activity;)V
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
    .line 198
    iput-object p1, p0, Lcom/google/android/finsky/layout/NativeActionBar$2;->this$0:Lcom/google/android/finsky/layout/NativeActionBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onWishlistStatusChanged(Ljava/lang/String;Z)V
    .locals 2
    .parameter "docId"
    .parameter "isInWishlist"

    .prologue
    .line 201
    iget-object v1, p0, Lcom/google/android/finsky/layout/NativeActionBar$2;->this$0:Lcom/google/android/finsky/layout/NativeActionBar;

    #getter for: Lcom/google/android/finsky/layout/NativeActionBar;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;
    invoke-static {v1}, Lcom/google/android/finsky/layout/NativeActionBar;->access$200(Lcom/google/android/finsky/layout/NativeActionBar;)Lcom/google/android/finsky/navigationmanager/NavigationManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->getCurrentDocument()Lcom/google/android/finsky/api/model/Document;

    move-result-object v0

    .line 202
    .local v0, currDoc:Lcom/google/android/finsky/api/model/Document;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/Document;->getDocId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 203
    iget-object v1, p0, Lcom/google/android/finsky/layout/NativeActionBar$2;->this$0:Lcom/google/android/finsky/layout/NativeActionBar;

    #calls: Lcom/google/android/finsky/layout/NativeActionBar;->syncWishlistStatus(Z)V
    invoke-static {v1, p2}, Lcom/google/android/finsky/layout/NativeActionBar;->access$300(Lcom/google/android/finsky/layout/NativeActionBar;Z)V

    .line 205
    :cond_0
    return-void
.end method
