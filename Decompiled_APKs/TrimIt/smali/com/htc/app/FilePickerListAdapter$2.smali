.class Lcom/htc/app/FilePickerListAdapter$2;
.super Ljava/lang/Object;
.source "FilePickerListAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/app/FilePickerListAdapter;->NotifyListChanged(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/app/FilePickerListAdapter;


# direct methods
.method constructor <init>(Lcom/htc/app/FilePickerListAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 860
    iput-object p1, p0, Lcom/htc/app/FilePickerListAdapter$2;->this$0:Lcom/htc/app/FilePickerListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 862
    iget-object v0, p0, Lcom/htc/app/FilePickerListAdapter$2;->this$0:Lcom/htc/app/FilePickerListAdapter;

    #getter for: Lcom/htc/app/FilePickerListAdapter;->mDataSetChangedListener:Lcom/htc/app/FilePickerListAdapter$onDataSetChangedListener;
    invoke-static {v0}, Lcom/htc/app/FilePickerListAdapter;->access$500(Lcom/htc/app/FilePickerListAdapter;)Lcom/htc/app/FilePickerListAdapter$onDataSetChangedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 863
    iget-object v0, p0, Lcom/htc/app/FilePickerListAdapter$2;->this$0:Lcom/htc/app/FilePickerListAdapter;

    #getter for: Lcom/htc/app/FilePickerListAdapter;->mDataSetChangedListener:Lcom/htc/app/FilePickerListAdapter$onDataSetChangedListener;
    invoke-static {v0}, Lcom/htc/app/FilePickerListAdapter;->access$500(Lcom/htc/app/FilePickerListAdapter;)Lcom/htc/app/FilePickerListAdapter$onDataSetChangedListener;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/app/FilePickerListAdapter$2;->this$0:Lcom/htc/app/FilePickerListAdapter;

    #getter for: Lcom/htc/app/FilePickerListAdapter;->mFileScanner:Lcom/htc/app/FileScanner;
    invoke-static {v1}, Lcom/htc/app/FilePickerListAdapter;->access$600(Lcom/htc/app/FilePickerListAdapter;)Lcom/htc/app/FileScanner;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/app/FileScanner;->getSerachFileCount()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/htc/app/FilePickerListAdapter$onDataSetChangedListener;->onFileScan(I)V

    .line 865
    :cond_0
    return-void
.end method
