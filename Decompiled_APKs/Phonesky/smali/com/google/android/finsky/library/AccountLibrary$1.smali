.class Lcom/google/android/finsky/library/AccountLibrary$1;
.super Ljava/lang/Object;
.source "AccountLibrary.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/library/AccountLibrary;->notifyListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/library/AccountLibrary;

.field final synthetic val$listeners:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/library/AccountLibrary;Ljava/util/List;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 151
    iput-object p1, p0, Lcom/google/android/finsky/library/AccountLibrary$1;->this$0:Lcom/google/android/finsky/library/AccountLibrary;

    iput-object p2, p0, Lcom/google/android/finsky/library/AccountLibrary$1;->val$listeners:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 154
    iget-object v2, p0, Lcom/google/android/finsky/library/AccountLibrary$1;->val$listeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/library/AccountLibrary$Listener;

    .line 155
    .local v1, listener:Lcom/google/android/finsky/library/AccountLibrary$Listener;
    invoke-interface {v1}, Lcom/google/android/finsky/library/AccountLibrary$Listener;->onLibraryChange()V

    goto :goto_0

    .line 157
    .end local v1           #listener:Lcom/google/android/finsky/library/AccountLibrary$Listener;
    :cond_0
    return-void
.end method
