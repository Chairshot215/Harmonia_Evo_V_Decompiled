.class Lcom/htc/app/FilePickerListAdapter$3;
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
    .line 870
    iput-object p1, p0, Lcom/htc/app/FilePickerListAdapter$3;->this$0:Lcom/htc/app/FilePickerListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 872
    iget-object v0, p0, Lcom/htc/app/FilePickerListAdapter$3;->this$0:Lcom/htc/app/FilePickerListAdapter;

    #calls: Lcom/htc/app/FilePickerListAdapter;->isCanNotifyDataChanged()Z
    invoke-static {v0}, Lcom/htc/app/FilePickerListAdapter;->access$700(Lcom/htc/app/FilePickerListAdapter;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 873
    iget-object v0, p0, Lcom/htc/app/FilePickerListAdapter$3;->this$0:Lcom/htc/app/FilePickerListAdapter;

    invoke-virtual {v0}, Lcom/htc/app/FilePickerListAdapter;->notifyDataSetChanged()V

    .line 877
    :goto_0
    return-void

    .line 875
    :cond_0
    iget-object v0, p0, Lcom/htc/app/FilePickerListAdapter$3;->this$0:Lcom/htc/app/FilePickerListAdapter;

    invoke-virtual {v0}, Lcom/htc/app/FilePickerListAdapter;->notifyDataSetInvalidated()V

    goto :goto_0
.end method
