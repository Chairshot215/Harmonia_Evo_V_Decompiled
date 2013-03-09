.class Lcom/android/browser/PreloadedTabControl$2;
.super Landroid/webkit/SearchBox$SearchBoxListener;
.source "PreloadedTabControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/PreloadedTabControl;->searchBoxSubmit(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/PreloadedTabControl;

.field final synthetic val$currentUrl:Ljava/lang/String;

.field final synthetic val$fallbackHeaders:Ljava/util/Map;

.field final synthetic val$fallbackUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/browser/PreloadedTabControl;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 79
    iput-object p1, p0, Lcom/android/browser/PreloadedTabControl$2;->this$0:Lcom/android/browser/PreloadedTabControl;

    iput-object p2, p0, Lcom/android/browser/PreloadedTabControl$2;->val$fallbackUrl:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/browser/PreloadedTabControl$2;->val$fallbackHeaders:Ljava/util/Map;

    iput-object p4, p0, Lcom/android/browser/PreloadedTabControl$2;->val$currentUrl:Ljava/lang/String;

    invoke-direct {p0}, Landroid/webkit/SearchBox$SearchBoxListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSubmitComplete(Z)V
    .locals 4
    .parameter "called"

    .prologue
    .line 82
    iget-object v1, p0, Lcom/android/browser/PreloadedTabControl$2;->this$0:Lcom/android/browser/PreloadedTabControl;

    #getter for: Lcom/android/browser/PreloadedTabControl;->mDestroyed:Z
    invoke-static {v1}, Lcom/android/browser/PreloadedTabControl;->access$000(Lcom/android/browser/PreloadedTabControl;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 104
    :goto_0
    return-void

    .line 83
    :cond_0
    const-string v1, "PreloadedTabControl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Query submitted: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    if-nez p1, :cond_1

    .line 85
    const-string v1, "PreloadedTabControl"

    const-string v2, "Query not submitted; falling back"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    iget-object v1, p0, Lcom/android/browser/PreloadedTabControl$2;->this$0:Lcom/android/browser/PreloadedTabControl;

    iget-object v2, p0, Lcom/android/browser/PreloadedTabControl$2;->val$fallbackUrl:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/browser/PreloadedTabControl$2;->val$fallbackHeaders:Ljava/util/Map;

    invoke-virtual {v1, v2, v3}, Lcom/android/browser/PreloadedTabControl;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    .line 88
    iget-object v1, p0, Lcom/android/browser/PreloadedTabControl$2;->this$0:Lcom/android/browser/PreloadedTabControl;

    iget-object v1, v1, Lcom/android/browser/PreloadedTabControl;->mTab:Lcom/android/browser/Tab;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "^"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/browser/PreloadedTabControl$2;->val$fallbackUrl:Ljava/lang/String;

    invoke-static {v3}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "$"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/browser/Tab;->clearBackStackWhenItemAdded(Ljava/util/regex/Pattern;)V

    goto :goto_0

    .line 93
    :cond_1
    iget-object v1, p0, Lcom/android/browser/PreloadedTabControl$2;->val$currentUrl:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->fragment(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 97
    .local v0, currentWithoutFragment:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/browser/PreloadedTabControl$2;->this$0:Lcom/android/browser/PreloadedTabControl;

    iget-object v1, v1, Lcom/android/browser/PreloadedTabControl;->mTab:Lcom/android/browser/Tab;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "^"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "(\\#.*)?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "$"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/browser/Tab;->clearBackStackWhenItemAdded(Ljava/util/regex/Pattern;)V

    goto/16 :goto_0
.end method
