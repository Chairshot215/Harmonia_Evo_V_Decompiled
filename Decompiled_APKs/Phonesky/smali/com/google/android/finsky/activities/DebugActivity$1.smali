.class Lcom/google/android/finsky/activities/DebugActivity$1;
.super Ljava/lang/Object;
.source "DebugActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/activities/DebugActivity;->buildSelectorFromCsv(Lcom/google/android/finsky/activities/DebugActivity$ICsvSelectorHelper;Ljava/lang/String;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/activities/DebugActivity;

.field final synthetic val$helper:Lcom/google/android/finsky/activities/DebugActivity$ICsvSelectorHelper;

.field final synthetic val$list:Ljava/util/List;

.field final synthetic val$toastText:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/activities/DebugActivity;Ljava/lang/String;Lcom/google/android/finsky/activities/DebugActivity$ICsvSelectorHelper;Ljava/util/List;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 226
    iput-object p1, p0, Lcom/google/android/finsky/activities/DebugActivity$1;->this$0:Lcom/google/android/finsky/activities/DebugActivity;

    iput-object p2, p0, Lcom/google/android/finsky/activities/DebugActivity$1;->val$toastText:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/finsky/activities/DebugActivity$1;->val$helper:Lcom/google/android/finsky/activities/DebugActivity$ICsvSelectorHelper;

    iput-object p4, p0, Lcom/google/android/finsky/activities/DebugActivity$1;->val$list:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "item"

    .prologue
    .line 229
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 230
    iget-object v0, p0, Lcom/google/android/finsky/activities/DebugActivity$1;->this$0:Lcom/google/android/finsky/activities/DebugActivity;

    iget-object v1, p0, Lcom/google/android/finsky/activities/DebugActivity$1;->val$toastText:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 232
    iget-object v0, p0, Lcom/google/android/finsky/activities/DebugActivity$1;->val$helper:Lcom/google/android/finsky/activities/DebugActivity$ICsvSelectorHelper;

    iget-object v1, p0, Lcom/google/android/finsky/activities/DebugActivity$1;->val$list:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/finsky/activities/DebugActivity$ICsvSelectorHelper;->selectItem(Ljava/lang/Object;)V

    .line 234
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/google/android/finsky/activities/DebugActivity$1$1;

    invoke-direct {v1, p0}, Lcom/google/android/finsky/activities/DebugActivity$1$1;-><init>(Lcom/google/android/finsky/activities/DebugActivity$1;)V

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 240
    return-void
.end method
