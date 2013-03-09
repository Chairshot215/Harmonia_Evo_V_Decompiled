.class Lcom/google/android/googlequicksearchbox/preferences/ManageSearchHistoryHelper$2;
.super Ljava/lang/Object;
.source "ManageSearchHistoryHelper.java"

# interfaces
.implements Lcom/google/android/googlequicksearchbox/util/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/googlequicksearchbox/preferences/ManageSearchHistoryHelper;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/googlequicksearchbox/util/Consumer",
        "<",
        "Landroid/net/Uri;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/googlequicksearchbox/preferences/ManageSearchHistoryHelper;

.field final synthetic val$manageSearchHistory:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/googlequicksearchbox/preferences/ManageSearchHistoryHelper;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 72
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/preferences/ManageSearchHistoryHelper$2;->this$0:Lcom/google/android/googlequicksearchbox/preferences/ManageSearchHistoryHelper;

    iput-object p2, p0, Lcom/google/android/googlequicksearchbox/preferences/ManageSearchHistoryHelper$2;->val$manageSearchHistory:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public consume(Landroid/net/Uri;)Z
    .locals 2
    .parameter "uri"

    .prologue
    .line 74
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/preferences/ManageSearchHistoryHelper$2;->this$0:Lcom/google/android/googlequicksearchbox/preferences/ManageSearchHistoryHelper;

    #getter for: Lcom/google/android/googlequicksearchbox/preferences/ManageSearchHistoryHelper;->mCancelled:Z
    invoke-static {v1}, Lcom/google/android/googlequicksearchbox/preferences/ManageSearchHistoryHelper;->access$100(Lcom/google/android/googlequicksearchbox/preferences/ManageSearchHistoryHelper;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 75
    const/4 v1, 0x0

    .line 86
    :goto_0
    return v1

    .line 77
    :cond_0
    if-nez p1, :cond_1

    .line 79
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/preferences/ManageSearchHistoryHelper$2;->val$manageSearchHistory:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 81
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 83
    .local v0, i:Landroid/content/Intent;
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 84
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/preferences/ManageSearchHistoryHelper$2;->this$0:Lcom/google/android/googlequicksearchbox/preferences/ManageSearchHistoryHelper;

    invoke-virtual {v1}, Lcom/google/android/googlequicksearchbox/preferences/ManageSearchHistoryHelper;->dismiss()V

    .line 85
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/preferences/ManageSearchHistoryHelper$2;->this$0:Lcom/google/android/googlequicksearchbox/preferences/ManageSearchHistoryHelper;

    invoke-virtual {v1}, Lcom/google/android/googlequicksearchbox/preferences/ManageSearchHistoryHelper;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 86
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public bridge synthetic consume(Ljava/lang/Object;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    check-cast p1, Landroid/net/Uri;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/googlequicksearchbox/preferences/ManageSearchHistoryHelper$2;->consume(Landroid/net/Uri;)Z

    move-result v0

    return v0
.end method
