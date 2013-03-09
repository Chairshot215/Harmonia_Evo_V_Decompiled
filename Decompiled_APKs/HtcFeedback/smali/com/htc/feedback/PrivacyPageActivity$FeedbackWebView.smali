.class public final Lcom/htc/feedback/PrivacyPageActivity$FeedbackWebView;
.super Landroid/webkit/WebView;
.source "PrivacyPageActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/feedback/PrivacyPageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FeedbackWebView"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 106
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 107
    return-void
.end method


# virtual methods
.method public performLongClick()Z
    .locals 1

    .prologue
    .line 110
    const/4 v0, 0x1

    return v0
.end method
