.class Lcom/google/android/gm/HybridHtmlConversationView$SetCookieTask;
.super Landroid/os/AsyncTask;
.source "HybridHtmlConversationView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gm/HybridHtmlConversationView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SetCookieTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final mCookie:Ljava/lang/String;

.field final mUri:Ljava/lang/String;

.field final synthetic this$0:Lcom/google/android/gm/HybridHtmlConversationView;


# direct methods
.method constructor <init>(Lcom/google/android/gm/HybridHtmlConversationView;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "uri"
    .parameter "cookie"

    .prologue
    .line 2221
    iput-object p1, p0, Lcom/google/android/gm/HybridHtmlConversationView$SetCookieTask;->this$0:Lcom/google/android/gm/HybridHtmlConversationView;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 2222
    iput-object p2, p0, Lcom/google/android/gm/HybridHtmlConversationView$SetCookieTask;->mUri:Ljava/lang/String;

    .line 2223
    iput-object p3, p0, Lcom/google/android/gm/HybridHtmlConversationView$SetCookieTask;->mCookie:Ljava/lang/String;

    .line 2224
    return-void
.end method


# virtual methods
.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 2217
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/gm/HybridHtmlConversationView$SetCookieTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 4
    .parameter "args"

    .prologue
    .line 2228
    iget-object v1, p0, Lcom/google/android/gm/HybridHtmlConversationView$SetCookieTask;->this$0:Lcom/google/android/gm/HybridHtmlConversationView;

    #getter for: Lcom/google/android/gm/HybridHtmlConversationView;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/google/android/gm/HybridHtmlConversationView;->access$2000(Lcom/google/android/gm/HybridHtmlConversationView;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    move-result-object v0

    .line 2230
    .local v0, csm:Landroid/webkit/CookieSyncManager;
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gm/HybridHtmlConversationView$SetCookieTask;->mUri:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gm/HybridHtmlConversationView$SetCookieTask;->mCookie:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    .line 2231
    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->sync()V

    .line 2232
    const/4 v1, 0x0

    return-object v1
.end method
