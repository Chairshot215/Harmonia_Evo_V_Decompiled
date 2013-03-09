.class Lcom/android/mms/ui/RestoreActivity$2;
.super Ljava/lang/Object;
.source "RestoreActivity.java"

# interfaces
.implements Lcom/htc/widget/HtcAdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/RestoreActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/RestoreActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/RestoreActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 160
    iput-object p1, p0, Lcom/android/mms/ui/RestoreActivity$2;->this$0:Lcom/android/mms/ui/RestoreActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)V
    .locals 3
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/widget/HtcAdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 162
    .local p1, parent:Lcom/htc/widget/HtcAdapterView;,"Lcom/htc/widget/HtcAdapterView<*>;"
    iget-object v1, p0, Lcom/android/mms/ui/RestoreActivity$2;->this$0:Lcom/android/mms/ui/RestoreActivity;

    #getter for: Lcom/android/mms/ui/RestoreActivity;->mAdapter:Landroid/widget/ListAdapter;
    invoke-static {v1}, Lcom/android/mms/ui/RestoreActivity;->access$200(Lcom/android/mms/ui/RestoreActivity;)Landroid/widget/ListAdapter;

    move-result-object v1

    invoke-interface {v1, p3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 163
    .local v0, fileName:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 164
    iget-object v1, p0, Lcom/android/mms/ui/RestoreActivity$2;->this$0:Lcom/android/mms/ui/RestoreActivity;

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v2, v1, Lcom/android/mms/ui/RestoreActivity;->mBackupFileName:Ljava/lang/String;

    .line 165
    iget-object v1, p0, Lcom/android/mms/ui/RestoreActivity$2;->this$0:Lcom/android/mms/ui/RestoreActivity;

    invoke-virtual {v1}, Lcom/android/mms/ui/RestoreActivity;->confirmRetoreFromBackupFile()V

    .line 167
    :cond_0
    return-void
.end method
