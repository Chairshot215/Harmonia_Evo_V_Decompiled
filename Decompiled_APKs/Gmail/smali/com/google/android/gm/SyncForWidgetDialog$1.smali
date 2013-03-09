.class Lcom/google/android/gm/SyncForWidgetDialog$1;
.super Landroid/os/AsyncTask;
.source "SyncForWidgetDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gm/SyncForWidgetDialog;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Landroid/content/Context;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/gm/SyncForWidgetDialog;


# direct methods
.method constructor <init>(Lcom/google/android/gm/SyncForWidgetDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 71
    iput-object p1, p0, Lcom/google/android/gm/SyncForWidgetDialog$1;->this$0:Lcom/google/android/gm/SyncForWidgetDialog;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    check-cast p1, [Landroid/content/Context;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/gm/SyncForWidgetDialog$1;->doInBackground([Landroid/content/Context;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Landroid/content/Context;)Ljava/lang/Void;
    .locals 5
    .parameter "params"

    .prologue
    .line 75
    const/4 v3, 0x0

    aget-object v0, p1, v3

    .line 76
    .local v0, context:Landroid/content/Context;
    iget-object v3, p0, Lcom/google/android/gm/SyncForWidgetDialog$1;->this$0:Lcom/google/android/gm/SyncForWidgetDialog;

    #getter for: Lcom/google/android/gm/SyncForWidgetDialog;->mGmail:Lcom/google/android/gm/provider/Gmail;
    invoke-static {v3}, Lcom/google/android/gm/SyncForWidgetDialog;->access$100(Lcom/google/android/gm/SyncForWidgetDialog;)Lcom/google/android/gm/provider/Gmail;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gm/SyncForWidgetDialog$1;->this$0:Lcom/google/android/gm/SyncForWidgetDialog;

    #getter for: Lcom/google/android/gm/SyncForWidgetDialog;->mAccount:Ljava/lang/String;
    invoke-static {v4}, Lcom/google/android/gm/SyncForWidgetDialog;->access$000(Lcom/google/android/gm/SyncForWidgetDialog;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lcom/google/android/gm/provider/Gmail;->getSettings(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/gm/provider/Gmail$Settings;

    move-result-object v2

    .line 77
    .local v2, settings:Lcom/google/android/gm/provider/Gmail$Settings;
    invoke-static {}, Lcom/google/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v1

    .line 78
    .local v1, partialLabelSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {v2}, Lcom/google/android/gm/provider/Gmail$Settings;->getLabelsPartial()Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 79
    iget-object v3, p0, Lcom/google/android/gm/SyncForWidgetDialog$1;->this$0:Lcom/google/android/gm/SyncForWidgetDialog;

    #getter for: Lcom/google/android/gm/SyncForWidgetDialog;->mLabel:Ljava/lang/String;
    invoke-static {v3}, Lcom/google/android/gm/SyncForWidgetDialog;->access$200(Lcom/google/android/gm/SyncForWidgetDialog;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 80
    invoke-virtual {v2, v1}, Lcom/google/android/gm/provider/Gmail$Settings;->setLabelsPartial(Ljava/util/Collection;)V

    .line 81
    iget-object v3, p0, Lcom/google/android/gm/SyncForWidgetDialog$1;->this$0:Lcom/google/android/gm/SyncForWidgetDialog;

    #getter for: Lcom/google/android/gm/SyncForWidgetDialog;->mGmail:Lcom/google/android/gm/provider/Gmail;
    invoke-static {v3}, Lcom/google/android/gm/SyncForWidgetDialog;->access$100(Lcom/google/android/gm/SyncForWidgetDialog;)Lcom/google/android/gm/provider/Gmail;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gm/SyncForWidgetDialog$1;->this$0:Lcom/google/android/gm/SyncForWidgetDialog;

    #getter for: Lcom/google/android/gm/SyncForWidgetDialog;->mAccount:Ljava/lang/String;
    invoke-static {v4}, Lcom/google/android/gm/SyncForWidgetDialog;->access$000(Lcom/google/android/gm/SyncForWidgetDialog;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Lcom/google/android/gm/provider/Gmail;->setSettings(Ljava/lang/String;Lcom/google/android/gm/provider/Gmail$Settings;)V

    .line 83
    const/4 v3, 0x0

    return-object v3
.end method
