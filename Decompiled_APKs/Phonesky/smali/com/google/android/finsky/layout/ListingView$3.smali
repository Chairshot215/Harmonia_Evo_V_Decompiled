.class Lcom/google/android/finsky/layout/ListingView$3;
.super Ljava/lang/Object;
.source "ListingView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/layout/ListingView;->addFlagContentRow(Lcom/google/android/finsky/navigationmanager/NavigationManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/layout/ListingView;

.field final synthetic val$navigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/layout/ListingView;Lcom/google/android/finsky/navigationmanager/NavigationManager;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 341
    iput-object p1, p0, Lcom/google/android/finsky/layout/ListingView$3;->this$0:Lcom/google/android/finsky/layout/ListingView;

    iput-object p2, p0, Lcom/google/android/finsky/layout/ListingView$3;->val$navigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 344
    iget-object v0, p0, Lcom/google/android/finsky/layout/ListingView$3;->val$navigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    iget-object v1, p0, Lcom/google/android/finsky/layout/ListingView$3;->this$0:Lcom/google/android/finsky/layout/ListingView;

    #getter for: Lcom/google/android/finsky/layout/ListingView;->mDoc:Lcom/google/android/finsky/api/model/Document;
    invoke-static {v1}, Lcom/google/android/finsky/layout/ListingView;->access$100(Lcom/google/android/finsky/layout/ListingView;)Lcom/google/android/finsky/api/model/Document;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/Document;->getDetailsUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->goToFlagContent(Ljava/lang/String;)V

    .line 345
    return-void
.end method
