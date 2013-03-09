.class Lcom/htc/app/FilePickerListAdapter$6;
.super Ljava/lang/Object;
.source "FilePickerListAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/app/FilePickerListAdapter;->NotifyFileScanEnd()V
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
    .line 902
    iput-object p1, p0, Lcom/htc/app/FilePickerListAdapter$6;->this$0:Lcom/htc/app/FilePickerListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 904
    iget-object v0, p0, Lcom/htc/app/FilePickerListAdapter$6;->this$0:Lcom/htc/app/FilePickerListAdapter;

    #getter for: Lcom/htc/app/FilePickerListAdapter;->mDataSetChangedListener:Lcom/htc/app/FilePickerListAdapter$onDataSetChangedListener;
    invoke-static {v0}, Lcom/htc/app/FilePickerListAdapter;->access$500(Lcom/htc/app/FilePickerListAdapter;)Lcom/htc/app/FilePickerListAdapter$onDataSetChangedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 905
    iget-object v0, p0, Lcom/htc/app/FilePickerListAdapter$6;->this$0:Lcom/htc/app/FilePickerListAdapter;

    #getter for: Lcom/htc/app/FilePickerListAdapter;->mDataSetChangedListener:Lcom/htc/app/FilePickerListAdapter$onDataSetChangedListener;
    invoke-static {v0}, Lcom/htc/app/FilePickerListAdapter;->access$500(Lcom/htc/app/FilePickerListAdapter;)Lcom/htc/app/FilePickerListAdapter$onDataSetChangedListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/app/FilePickerListAdapter$onDataSetChangedListener;->onFileScanEnd()V

    .line 906
    :cond_0
    iget-object v0, p0, Lcom/htc/app/FilePickerListAdapter$6;->this$0:Lcom/htc/app/FilePickerListAdapter;

    #getter for: Lcom/htc/app/FilePickerListAdapter;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;
    invoke-static {v0}, Lcom/htc/app/FilePickerListAdapter;->access$1000(Lcom/htc/app/FilePickerListAdapter;)Lcom/htc/app/FilePickerUtil;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/app/FilePickerListAdapter$6;->this$0:Lcom/htc/app/FilePickerListAdapter;

    #getter for: Lcom/htc/app/FilePickerListAdapter;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;
    invoke-static {v0}, Lcom/htc/app/FilePickerListAdapter;->access$1000(Lcom/htc/app/FilePickerListAdapter;)Lcom/htc/app/FilePickerUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/app/FilePickerUtil;->IsListView()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 907
    iget-object v0, p0, Lcom/htc/app/FilePickerListAdapter$6;->this$0:Lcom/htc/app/FilePickerListAdapter;

    invoke-virtual {v0}, Lcom/htc/app/FilePickerListAdapter;->notifyDataSetChanged()V

    .line 908
    :cond_1
    return-void
.end method
