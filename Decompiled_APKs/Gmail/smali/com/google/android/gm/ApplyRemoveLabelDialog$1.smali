.class Lcom/google/android/gm/ApplyRemoveLabelDialog$1;
.super Ljava/lang/Object;
.source "ApplyRemoveLabelDialog.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gm/ApplyRemoveLabelDialog;->onPrepare(Ljava/lang/String;Ljava/util/Map;Ljava/util/Collection;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/gm/ApplyRemoveLabelDialog;


# direct methods
.method constructor <init>(Lcom/google/android/gm/ApplyRemoveLabelDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 101
    iput-object p1, p0, Lcom/google/android/gm/ApplyRemoveLabelDialog$1;->this$0:Lcom/google/android/gm/ApplyRemoveLabelDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 104
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/google/android/gm/ApplyRemoveLabelDialog$1;->this$0:Lcom/google/android/gm/ApplyRemoveLabelDialog;

    #calls: Lcom/google/android/gm/ApplyRemoveLabelDialog;->onSelectLabel(I)V
    invoke-static {v0, p3}, Lcom/google/android/gm/ApplyRemoveLabelDialog;->access$000(Lcom/google/android/gm/ApplyRemoveLabelDialog;I)V

    .line 105
    return-void
.end method
