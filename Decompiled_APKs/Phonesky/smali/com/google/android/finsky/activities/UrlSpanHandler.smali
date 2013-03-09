.class public abstract Lcom/google/android/finsky/activities/UrlSpanHandler;
.super Landroid/text/style/URLSpan;
.source "UrlSpanHandler.java"


# instance fields
.field mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "url"

    .prologue
    .line 17
    invoke-direct {p0, p1}, Landroid/text/style/URLSpan;-><init>(Ljava/lang/String;)V

    .line 18
    iput-object p1, p0, Lcom/google/android/finsky/activities/UrlSpanHandler;->mUrl:Ljava/lang/String;

    .line 19
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "widget"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/google/android/finsky/activities/UrlSpanHandler;->mUrl:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/google/android/finsky/activities/UrlSpanHandler;->onUrlClick(Landroid/view/View;Ljava/lang/String;)V

    .line 24
    return-void
.end method

.method public abstract onUrlClick(Landroid/view/View;Ljava/lang/String;)V
.end method
