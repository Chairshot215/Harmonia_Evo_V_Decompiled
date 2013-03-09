.class final Lcom/google/android/finsky/widget/WidgetUtils$1;
.super Ljava/lang/Object;
.source "WidgetUtils.java"

# interfaces
.implements Lcom/google/android/finsky/library/LibraryReplicators$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/widget/WidgetUtils;->registerLibraryMutationsListener(Landroid/content/Context;Lcom/google/android/finsky/library/LibraryReplicators;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 103
    iput-object p1, p0, Lcom/google/android/finsky/widget/WidgetUtils$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMutationsApplied(Lcom/google/android/finsky/library/AccountLibrary;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 106
    iget-object v0, p0, Lcom/google/android/finsky/widget/WidgetUtils$1;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/finsky/widget/WidgetTypeMap;->get(Landroid/content/Context;)Lcom/google/android/finsky/widget/WidgetTypeMap;

    move-result-object v0

    .line 107
    invoke-static {p2}, Lcom/google/android/finsky/library/AccountLibrary;->getBackendFromLibraryId(Ljava/lang/String;)I

    move-result v1

    .line 108
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 109
    invoke-static {v1}, Lcom/google/android/finsky/widget/WidgetUtils;->translate(I)Ljava/lang/String;

    move-result-object v1

    .line 110
    const-class v2, Lcom/google/android/finsky/widget/recommendation/RecommendedWidgetProvider;

    invoke-virtual {v0, v2, v1}, Lcom/google/android/finsky/widget/WidgetTypeMap;->getWidgets(Ljava/lang/Class;Ljava/lang/String;)[I

    move-result-object v0

    .line 112
    array-length v1, v0

    if-lez v1, :cond_0

    .line 113
    iget-object v1, p0, Lcom/google/android/finsky/widget/WidgetUtils$1;->val$context:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/google/android/finsky/widget/recommendation/RecommendationsViewFactory;->notifyDataSetChanged(Landroid/content/Context;[I)V

    .line 116
    :cond_0
    return-void
.end method
