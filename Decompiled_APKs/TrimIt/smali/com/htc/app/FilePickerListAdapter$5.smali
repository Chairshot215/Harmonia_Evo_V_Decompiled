.class Lcom/htc/app/FilePickerListAdapter$5;
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
    .line 890
    iput-object p1, p0, Lcom/htc/app/FilePickerListAdapter$5;->this$0:Lcom/htc/app/FilePickerListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 892
    iget-object v0, p0, Lcom/htc/app/FilePickerListAdapter$5;->this$0:Lcom/htc/app/FilePickerListAdapter;

    iget-object v1, p0, Lcom/htc/app/FilePickerListAdapter$5;->this$0:Lcom/htc/app/FilePickerListAdapter;

    #getter for: Lcom/htc/app/FilePickerListAdapter;->headerViewText:Ljava/lang/String;
    invoke-static {v1}, Lcom/htc/app/FilePickerListAdapter;->access$800(Lcom/htc/app/FilePickerListAdapter;)Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/htc/app/FilePickerListAdapter;->updateHeaderViewText(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/htc/app/FilePickerListAdapter;->access$900(Lcom/htc/app/FilePickerListAdapter;Ljava/lang/String;)V

    .line 893
    return-void
.end method
