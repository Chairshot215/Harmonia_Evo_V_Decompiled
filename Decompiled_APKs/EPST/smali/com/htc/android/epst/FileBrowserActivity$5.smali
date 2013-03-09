.class Lcom/htc/android/epst/FileBrowserActivity$5;
.super Ljava/lang/Object;
.source "FileBrowserActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/epst/FileBrowserActivity;->setupFileListView()V
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
    .line 303
    iput-object p1, p0, Lcom/htc/android/epst/FileBrowserActivity$5;->this$0:Lcom/htc/android/epst/FileBrowserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
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
    .line 305
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    invoke-static {}, Lcom/htc/android/epst/FileBrowserActivity;->access$800()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 306
    .local v0, selectedFile:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/android/epst/FileBrowserActivity;->access$602(Ljava/lang/String;)Ljava/lang/String;

    .line 307
    invoke-static {}, Lcom/htc/android/epst/FileBrowserActivity;->access$700()Landroid/widget/EditText;

    move-result-object v1

    invoke-static {}, Lcom/htc/android/epst/FileBrowserActivity;->access$600()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 308
    invoke-virtual {p1}, Landroid/widget/AdapterView;->invalidate()V

    .line 309
    return-void
.end method
