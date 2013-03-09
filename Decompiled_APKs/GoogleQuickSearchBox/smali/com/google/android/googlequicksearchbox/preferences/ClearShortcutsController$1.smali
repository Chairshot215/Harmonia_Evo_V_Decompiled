.class Lcom/google/android/googlequicksearchbox/preferences/ClearShortcutsController$1;
.super Ljava/lang/Object;
.source "ClearShortcutsController.java"

# interfaces
.implements Lcom/google/android/googlequicksearchbox/preferences/OkCancelPreference$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/googlequicksearchbox/preferences/ClearShortcutsController;->handlePreference(Landroid/preference/Preference;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/googlequicksearchbox/preferences/ClearShortcutsController;


# direct methods
.method constructor <init>(Lcom/google/android/googlequicksearchbox/preferences/ClearShortcutsController;)V
    .locals 0
    .parameter

    .prologue
    .line 55
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/preferences/ClearShortcutsController$1;->this$0:Lcom/google/android/googlequicksearchbox/preferences/ClearShortcutsController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDialogClosed(Z)V
    .locals 1
    .parameter "okClicked"

    .prologue
    .line 58
    if-eqz p1, :cond_0

    .line 59
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/preferences/ClearShortcutsController$1;->this$0:Lcom/google/android/googlequicksearchbox/preferences/ClearShortcutsController;

    #calls: Lcom/google/android/googlequicksearchbox/preferences/ClearShortcutsController;->clearShortcuts()V
    invoke-static {v0}, Lcom/google/android/googlequicksearchbox/preferences/ClearShortcutsController;->access$000(Lcom/google/android/googlequicksearchbox/preferences/ClearShortcutsController;)V

    .line 61
    :cond_0
    return-void
.end method
