.class Lcom/google/android/googlequicksearchbox/preferences/ClearShortcutsController$2;
.super Ljava/lang/Object;
.source "ClearShortcutsController.java"

# interfaces
.implements Lcom/google/android/googlequicksearchbox/util/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/googlequicksearchbox/preferences/ClearShortcutsController;->updateClearShortcutsPreference()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/googlequicksearchbox/util/Consumer",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/googlequicksearchbox/preferences/ClearShortcutsController;


# direct methods
.method constructor <init>(Lcom/google/android/googlequicksearchbox/preferences/ClearShortcutsController;)V
    .locals 0
    .parameter

    .prologue
    .line 76
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/preferences/ClearShortcutsController$2;->this$0:Lcom/google/android/googlequicksearchbox/preferences/ClearShortcutsController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public consume(Ljava/lang/Boolean;)Z
    .locals 4
    .parameter "hasHistory"

    .prologue
    const/4 v3, 0x1

    .line 79
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/preferences/ClearShortcutsController$2;->this$0:Lcom/google/android/googlequicksearchbox/preferences/ClearShortcutsController;

    #getter for: Lcom/google/android/googlequicksearchbox/preferences/ClearShortcutsController;->mClearShortcutsPreference:Lcom/google/android/googlequicksearchbox/preferences/OkCancelPreference;
    invoke-static {v0}, Lcom/google/android/googlequicksearchbox/preferences/ClearShortcutsController;->access$100(Lcom/google/android/googlequicksearchbox/preferences/ClearShortcutsController;)Lcom/google/android/googlequicksearchbox/preferences/OkCancelPreference;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/google/android/googlequicksearchbox/preferences/OkCancelPreference;->setEnabled(Z)V

    .line 94
    :goto_0
    return v3

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/preferences/ClearShortcutsController$2;->this$0:Lcom/google/android/googlequicksearchbox/preferences/ClearShortcutsController;

    #getter for: Lcom/google/android/googlequicksearchbox/preferences/ClearShortcutsController;->mClickLog:Lcom/google/android/googlequicksearchbox/clicklog/ClickLog;
    invoke-static {v0}, Lcom/google/android/googlequicksearchbox/preferences/ClearShortcutsController;->access$300(Lcom/google/android/googlequicksearchbox/preferences/ClearShortcutsController;)Lcom/google/android/googlequicksearchbox/clicklog/ClickLog;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/preferences/ClearShortcutsController$2;->this$0:Lcom/google/android/googlequicksearchbox/preferences/ClearShortcutsController;

    #getter for: Lcom/google/android/googlequicksearchbox/preferences/ClearShortcutsController;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/google/android/googlequicksearchbox/preferences/ClearShortcutsController;->access$200(Lcom/google/android/googlequicksearchbox/preferences/ClearShortcutsController;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/google/android/googlequicksearchbox/preferences/ClearShortcutsController$2$1;

    invoke-direct {v2, p0}, Lcom/google/android/googlequicksearchbox/preferences/ClearShortcutsController$2$1;-><init>(Lcom/google/android/googlequicksearchbox/preferences/ClearShortcutsController$2;)V

    invoke-static {v1, v2}, Lcom/google/android/googlequicksearchbox/util/Consumers;->createAsyncConsumer(Landroid/os/Handler;Lcom/google/android/googlequicksearchbox/util/Consumer;)Lcom/google/android/googlequicksearchbox/util/Consumer;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/googlequicksearchbox/clicklog/ClickLog;->hasHistory(Lcom/google/android/googlequicksearchbox/util/Consumer;)V

    goto :goto_0
.end method

.method public bridge synthetic consume(Ljava/lang/Object;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    check-cast p1, Ljava/lang/Boolean;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/googlequicksearchbox/preferences/ClearShortcutsController$2;->consume(Ljava/lang/Boolean;)Z

    move-result v0

    return v0
.end method
