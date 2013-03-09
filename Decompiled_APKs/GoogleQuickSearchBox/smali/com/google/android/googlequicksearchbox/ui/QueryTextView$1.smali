.class Lcom/google/android/googlequicksearchbox/ui/QueryTextView$1;
.super Ljava/lang/Object;
.source "QueryTextView.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/googlequicksearchbox/ui/QueryTextView;->addQueryTextWatcher(Lcom/google/android/googlequicksearchbox/util/TextChangeWatcher;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/googlequicksearchbox/ui/QueryTextView;

.field final synthetic val$watcher:Lcom/google/android/googlequicksearchbox/util/TextChangeWatcher;


# direct methods
.method constructor <init>(Lcom/google/android/googlequicksearchbox/ui/QueryTextView;Lcom/google/android/googlequicksearchbox/util/TextChangeWatcher;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 53
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/ui/QueryTextView$1;->this$0:Lcom/google/android/googlequicksearchbox/ui/QueryTextView;

    iput-object p2, p0, Lcom/google/android/googlequicksearchbox/ui/QueryTextView$1;->val$watcher:Lcom/google/android/googlequicksearchbox/util/TextChangeWatcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2
    .parameter "s"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/QueryTextView$1;->val$watcher:Lcom/google/android/googlequicksearchbox/util/TextChangeWatcher;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/googlequicksearchbox/util/TextChangeWatcher;->onTextChanged(Ljava/lang/String;)V

    .line 56
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 58
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 60
    return-void
.end method
