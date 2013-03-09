.class Lcom/google/android/googlequicksearchbox/preferences/ClearShortcutsController$2$1;
.super Ljava/lang/Object;
.source "ClearShortcutsController.java"

# interfaces
.implements Lcom/google/android/googlequicksearchbox/util/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/googlequicksearchbox/preferences/ClearShortcutsController$2;->consume(Ljava/lang/Boolean;)Z
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
.field final synthetic this$1:Lcom/google/android/googlequicksearchbox/preferences/ClearShortcutsController$2;


# direct methods
.method constructor <init>(Lcom/google/android/googlequicksearchbox/preferences/ClearShortcutsController$2;)V
    .locals 0
    .parameter

    .prologue
    .line 85
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/preferences/ClearShortcutsController$2$1;->this$1:Lcom/google/android/googlequicksearchbox/preferences/ClearShortcutsController$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public consume(Ljava/lang/Boolean;)Z
    .locals 2
    .parameter "hasHistory"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/preferences/ClearShortcutsController$2$1;->this$1:Lcom/google/android/googlequicksearchbox/preferences/ClearShortcutsController$2;

    iget-object v0, v0, Lcom/google/android/googlequicksearchbox/preferences/ClearShortcutsController$2;->this$0:Lcom/google/android/googlequicksearchbox/preferences/ClearShortcutsController;

    #getter for: Lcom/google/android/googlequicksearchbox/preferences/ClearShortcutsController;->mClearShortcutsPreference:Lcom/google/android/googlequicksearchbox/preferences/OkCancelPreference;
    invoke-static {v0}, Lcom/google/android/googlequicksearchbox/preferences/ClearShortcutsController;->access$100(Lcom/google/android/googlequicksearchbox/preferences/ClearShortcutsController;)Lcom/google/android/googlequicksearchbox/preferences/OkCancelPreference;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/googlequicksearchbox/preferences/OkCancelPreference;->setEnabled(Z)V

    .line 90
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic consume(Ljava/lang/Object;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    check-cast p1, Ljava/lang/Boolean;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/googlequicksearchbox/preferences/ClearShortcutsController$2$1;->consume(Ljava/lang/Boolean;)Z

    move-result v0

    return v0
.end method
