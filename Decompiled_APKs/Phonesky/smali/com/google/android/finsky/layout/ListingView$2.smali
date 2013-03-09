.class Lcom/google/android/finsky/layout/ListingView$2;
.super Ljava/lang/Object;
.source "ListingView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/layout/ListingView;->addEmailLinkRow(ILjava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/layout/ListingView;

.field final synthetic val$clickIntent:Landroid/content/Intent;

.field final synthetic val$emailUri:Landroid/net/Uri;

.field final synthetic val$link:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/layout/ListingView;Landroid/content/Intent;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 322
    iput-object p1, p0, Lcom/google/android/finsky/layout/ListingView$2;->this$0:Lcom/google/android/finsky/layout/ListingView;

    iput-object p2, p0, Lcom/google/android/finsky/layout/ListingView$2;->val$clickIntent:Landroid/content/Intent;

    iput-object p3, p0, Lcom/google/android/finsky/layout/ListingView$2;->val$emailUri:Landroid/net/Uri;

    iput-object p4, p0, Lcom/google/android/finsky/layout/ListingView$2;->val$link:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    .line 325
    iget-object v0, p0, Lcom/google/android/finsky/layout/ListingView$2;->this$0:Lcom/google/android/finsky/layout/ListingView;

    invoke-virtual {v0}, Lcom/google/android/finsky/layout/ListingView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/layout/ListingView$2;->val$clickIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 326
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getAnalytics()Lcom/google/android/finsky/analytics/Analytics;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/layout/ListingView$2;->this$0:Lcom/google/android/finsky/layout/ListingView;

    #getter for: Lcom/google/android/finsky/layout/ListingView;->mCurrentPageUrl:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/android/finsky/layout/ListingView;->access$000(Lcom/google/android/finsky/layout/ListingView;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/finsky/layout/ListingView$2;->val$emailUri:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/finsky/analytics/Analytics;->logPageView(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getEventLogger()Lcom/google/android/finsky/analytics/FinskyEventLog;

    move-result-object v0

    const-string v1, "emailLink"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "emailAddress"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/google/android/finsky/layout/ListingView$2;->val$link:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/google/android/finsky/analytics/FinskyEventLog;->logTag(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 330
    return-void
.end method
