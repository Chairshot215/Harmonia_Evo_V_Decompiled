.class public abstract Lcom/google/android/finsky/fragments/UrlBasedPageFragment;
.super Lcom/google/android/finsky/fragments/PageFragment;
.source "UrlBasedPageFragment.java"


# instance fields
.field protected mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/google/android/finsky/fragments/PageFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    const/4 v2, 0x0

    .line 24
    invoke-super {p0, p1}, Lcom/google/android/finsky/fragments/PageFragment;->onCreate(Landroid/os/Bundle;)V

    .line 25
    invoke-virtual {p0}, Lcom/google/android/finsky/fragments/UrlBasedPageFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "finsky.UrlBasedPageFragment.url"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/fragments/UrlBasedPageFragment;->mUrl:Ljava/lang/String;

    .line 30
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getEventLogger()Lcom/google/android/finsky/analytics/FinskyEventLog;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/fragments/UrlBasedPageFragment;->mUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v2}, Lcom/google/android/finsky/analytics/FinskyEventLog;->logView(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    return-void
.end method

.method protected setDfeTocAndUrl(Lcom/google/android/finsky/api/model/DfeToc;Ljava/lang/String;)V
    .locals 1
    .parameter "toc"
    .parameter "url"

    .prologue
    .line 18
    invoke-super {p0, p1}, Lcom/google/android/finsky/fragments/PageFragment;->setDfeToc(Lcom/google/android/finsky/api/model/DfeToc;)V

    .line 19
    const-string v0, "finsky.UrlBasedPageFragment.url"

    invoke-virtual {p0, v0, p2}, Lcom/google/android/finsky/fragments/UrlBasedPageFragment;->setArgument(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    return-void
.end method
