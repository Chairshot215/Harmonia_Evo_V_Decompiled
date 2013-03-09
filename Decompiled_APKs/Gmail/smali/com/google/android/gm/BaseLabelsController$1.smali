.class Lcom/google/android/gm/BaseLabelsController$1;
.super Landroid/os/AsyncTask;
.source "BaseLabelsController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gm/BaseLabelsController;->handlePause()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/gm/BaseLabelsController;


# direct methods
.method constructor <init>(Lcom/google/android/gm/BaseLabelsController;)V
    .locals 0
    .parameter

    .prologue
    .line 87
    iput-object p1, p0, Lcom/google/android/gm/BaseLabelsController$1;->this$0:Lcom/google/android/gm/BaseLabelsController;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 87
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/gm/BaseLabelsController$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 3
    .parameter "params"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/google/android/gm/BaseLabelsController$1;->this$0:Lcom/google/android/gm/BaseLabelsController;

    iget-object v0, v0, Lcom/google/android/gm/BaseLabelsController;->mSettings:Lcom/google/android/gm/provider/Gmail$Settings;

    iget-object v1, p0, Lcom/google/android/gm/BaseLabelsController$1;->this$0:Lcom/google/android/gm/BaseLabelsController;

    #getter for: Lcom/google/android/gm/BaseLabelsController;->mIncludedLabels:Ljava/util/List;
    invoke-static {v1}, Lcom/google/android/gm/BaseLabelsController;->access$000(Lcom/google/android/gm/BaseLabelsController;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gm/provider/Gmail$Settings;->setLabelsIncluded(Ljava/util/Collection;)V

    .line 91
    iget-object v0, p0, Lcom/google/android/gm/BaseLabelsController$1;->this$0:Lcom/google/android/gm/BaseLabelsController;

    iget-object v0, v0, Lcom/google/android/gm/BaseLabelsController;->mSettings:Lcom/google/android/gm/provider/Gmail$Settings;

    iget-object v1, p0, Lcom/google/android/gm/BaseLabelsController$1;->this$0:Lcom/google/android/gm/BaseLabelsController;

    #getter for: Lcom/google/android/gm/BaseLabelsController;->mPartialLabels:Ljava/util/List;
    invoke-static {v1}, Lcom/google/android/gm/BaseLabelsController;->access$100(Lcom/google/android/gm/BaseLabelsController;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gm/provider/Gmail$Settings;->setLabelsPartial(Ljava/util/Collection;)V

    .line 95
    iget-object v0, p0, Lcom/google/android/gm/BaseLabelsController$1;->this$0:Lcom/google/android/gm/BaseLabelsController;

    iget-object v0, v0, Lcom/google/android/gm/BaseLabelsController;->mGmail:Lcom/google/android/gm/provider/Gmail;

    iget-object v1, p0, Lcom/google/android/gm/BaseLabelsController$1;->this$0:Lcom/google/android/gm/BaseLabelsController;

    iget-object v1, v1, Lcom/google/android/gm/BaseLabelsController;->mAccount:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gm/BaseLabelsController$1;->this$0:Lcom/google/android/gm/BaseLabelsController;

    iget-object v2, v2, Lcom/google/android/gm/BaseLabelsController;->mSettings:Lcom/google/android/gm/provider/Gmail$Settings;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gm/provider/Gmail;->setSettings(Ljava/lang/String;Lcom/google/android/gm/provider/Gmail$Settings;)V

    .line 98
    iget-object v0, p0, Lcom/google/android/gm/BaseLabelsController$1;->this$0:Lcom/google/android/gm/BaseLabelsController;

    iget-object v0, v0, Lcom/google/android/gm/BaseLabelsController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gm/BaseLabelsController$1;->this$0:Lcom/google/android/gm/BaseLabelsController;

    iget-object v1, v1, Lcom/google/android/gm/BaseLabelsController;->mAccount:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/android/gm/preference/PreferenceUtils;->validateNotificationsForAccount(Landroid/content/Context;Ljava/lang/String;)V

    .line 99
    const/4 v0, 0x0

    return-object v0
.end method
