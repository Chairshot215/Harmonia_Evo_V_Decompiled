.class Lcom/htc/android/epst/FileBrowserActivity$6;
.super Ljava/lang/Object;
.source "FileBrowserActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/epst/FileBrowserActivity;->setupFilePathSpinner()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/epst/FileBrowserActivity;


# direct methods
.method constructor <init>(Lcom/htc/android/epst/FileBrowserActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 330
    iput-object p1, p0, Lcom/htc/android/epst/FileBrowserActivity$6;->this$0:Lcom/htc/android/epst/FileBrowserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
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
    .line 333
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    invoke-static {}, Lcom/htc/android/epst/FileBrowserActivity;->access$1000()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/android/epst/FilePath;

    invoke-static {v0}, Lcom/htc/android/epst/FileBrowserActivity;->access$902(Lcom/htc/android/epst/FilePath;)Lcom/htc/android/epst/FilePath;

    .line 335
    iget-object v0, p0, Lcom/htc/android/epst/FileBrowserActivity$6;->this$0:Lcom/htc/android/epst/FileBrowserActivity;

    #getter for: Lcom/htc/android/epst/FileBrowserActivity;->mainHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/htc/android/epst/FileBrowserActivity;->access$200(Lcom/htc/android/epst/FileBrowserActivity;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 338
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 342
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    return-void
.end method
