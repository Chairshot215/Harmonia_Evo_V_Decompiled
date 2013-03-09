.class Lcom/android/browser/PreloadedTabControl$1;
.super Landroid/webkit/SearchBox$SearchBoxListener;
.source "PreloadedTabControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/PreloadedTabControl;->maybeSetQuery(Ljava/lang/String;Landroid/webkit/SearchBox;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/PreloadedTabControl;

.field final synthetic val$query:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/browser/PreloadedTabControl;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 48
    iput-object p1, p0, Lcom/android/browser/PreloadedTabControl$1;->this$0:Lcom/android/browser/PreloadedTabControl;

    iput-object p2, p0, Lcom/android/browser/PreloadedTabControl$1;->val$query:Ljava/lang/String;

    invoke-direct {p0}, Landroid/webkit/SearchBox$SearchBoxListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onChangeComplete(Z)V
    .locals 3
    .parameter "called"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/browser/PreloadedTabControl$1;->this$0:Lcom/android/browser/PreloadedTabControl;

    #getter for: Lcom/android/browser/PreloadedTabControl;->mDestroyed:Z
    invoke-static {v0}, Lcom/android/browser/PreloadedTabControl;->access$000(Lcom/android/browser/PreloadedTabControl;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 56
    :cond_0
    :goto_0
    return-void

    .line 52
    :cond_1
    const-string v0, "PreloadedTabControl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Changed searchbox query: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    if-eqz p1, :cond_0

    .line 54
    iget-object v0, p0, Lcom/android/browser/PreloadedTabControl$1;->this$0:Lcom/android/browser/PreloadedTabControl;

    iget-object v1, p0, Lcom/android/browser/PreloadedTabControl$1;->val$query:Ljava/lang/String;

    #setter for: Lcom/android/browser/PreloadedTabControl;->mLastQuery:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/browser/PreloadedTabControl;->access$102(Lcom/android/browser/PreloadedTabControl;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0
.end method
