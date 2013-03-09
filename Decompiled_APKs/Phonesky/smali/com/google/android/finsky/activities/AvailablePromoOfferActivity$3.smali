.class Lcom/google/android/finsky/activities/AvailablePromoOfferActivity$3;
.super Lcom/google/android/finsky/activities/UrlSpanHandler;
.source "AvailablePromoOfferActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/activities/AvailablePromoOfferActivity;->replaceUrlsWithHandlers(Ljava/lang/CharSequence;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/activities/AvailablePromoOfferActivity;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/activities/AvailablePromoOfferActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 244
    iput-object p1, p0, Lcom/google/android/finsky/activities/AvailablePromoOfferActivity$3;->this$0:Lcom/google/android/finsky/activities/AvailablePromoOfferActivity;

    invoke-direct {p0, p2}, Lcom/google/android/finsky/activities/UrlSpanHandler;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onUrlClick(Landroid/view/View;Ljava/lang/String;)V
    .locals 1
    .parameter "span"
    .parameter "url"

    .prologue
    .line 247
    iget-object v0, p0, Lcom/google/android/finsky/activities/AvailablePromoOfferActivity$3;->this$0:Lcom/google/android/finsky/activities/AvailablePromoOfferActivity;

    invoke-virtual {v0, p2}, Lcom/google/android/finsky/activities/AvailablePromoOfferActivity;->showUrlWebView(Ljava/lang/String;)V

    .line 248
    return-void
.end method
