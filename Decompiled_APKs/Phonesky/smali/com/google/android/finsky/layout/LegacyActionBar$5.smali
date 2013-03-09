.class Lcom/google/android/finsky/layout/LegacyActionBar$5;
.super Ljava/lang/Object;
.source "LegacyActionBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/layout/LegacyActionBar;->setupWishlistButton()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/layout/LegacyActionBar;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/layout/LegacyActionBar;)V
    .locals 0
    .parameter

    .prologue
    .line 208
    iput-object p1, p0, Lcom/google/android/finsky/layout/LegacyActionBar$5;->this$0:Lcom/google/android/finsky/layout/LegacyActionBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 211
    iget-object v0, p0, Lcom/google/android/finsky/layout/LegacyActionBar$5;->this$0:Lcom/google/android/finsky/layout/LegacyActionBar;

    iget-object v1, p0, Lcom/google/android/finsky/layout/LegacyActionBar$5;->this$0:Lcom/google/android/finsky/layout/LegacyActionBar;

    #getter for: Lcom/google/android/finsky/layout/LegacyActionBar;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/google/android/finsky/layout/LegacyActionBar;->access$100(Lcom/google/android/finsky/layout/LegacyActionBar;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/layout/LegacyActionBar;->wishlistButtonClicked(Landroid/app/Activity;)V

    .line 212
    return-void
.end method
