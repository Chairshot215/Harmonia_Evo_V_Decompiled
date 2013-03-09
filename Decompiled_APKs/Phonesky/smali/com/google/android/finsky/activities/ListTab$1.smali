.class Lcom/google/android/finsky/activities/ListTab$1;
.super Ljava/lang/Object;
.source "ListTab.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/activities/ListTab;->syncViewToState()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/activities/ListTab;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/activities/ListTab;)V
    .locals 0
    .parameter

    .prologue
    .line 225
    iput-object p1, p0, Lcom/google/android/finsky/activities/ListTab$1;->this$0:Lcom/google/android/finsky/activities/ListTab;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 228
    iget-object v0, p0, Lcom/google/android/finsky/activities/ListTab$1;->this$0:Lcom/google/android/finsky/activities/ListTab;

    #getter for: Lcom/google/android/finsky/activities/ListTab;->mList:Lcom/google/android/finsky/api/model/DfeList;
    invoke-static {v0}, Lcom/google/android/finsky/activities/ListTab;->access$000(Lcom/google/android/finsky/activities/ListTab;)Lcom/google/android/finsky/api/model/DfeList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/DfeList;->resetItems()V

    .line 229
    iget-object v0, p0, Lcom/google/android/finsky/activities/ListTab$1;->this$0:Lcom/google/android/finsky/activities/ListTab;

    #getter for: Lcom/google/android/finsky/activities/ListTab;->mList:Lcom/google/android/finsky/api/model/DfeList;
    invoke-static {v0}, Lcom/google/android/finsky/activities/ListTab;->access$000(Lcom/google/android/finsky/activities/ListTab;)Lcom/google/android/finsky/api/model/DfeList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/DfeList;->clearTransientState()V

    .line 230
    iget-object v0, p0, Lcom/google/android/finsky/activities/ListTab$1;->this$0:Lcom/google/android/finsky/activities/ListTab;

    #getter for: Lcom/google/android/finsky/activities/ListTab;->mList:Lcom/google/android/finsky/api/model/DfeList;
    invoke-static {v0}, Lcom/google/android/finsky/activities/ListTab;->access$000(Lcom/google/android/finsky/activities/ListTab;)Lcom/google/android/finsky/api/model/DfeList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/DfeList;->startLoadItems()V

    .line 231
    iget-object v0, p0, Lcom/google/android/finsky/activities/ListTab$1;->this$0:Lcom/google/android/finsky/activities/ListTab;

    #calls: Lcom/google/android/finsky/activities/ListTab;->syncViewToState()V
    invoke-static {v0}, Lcom/google/android/finsky/activities/ListTab;->access$100(Lcom/google/android/finsky/activities/ListTab;)V

    .line 232
    return-void
.end method
