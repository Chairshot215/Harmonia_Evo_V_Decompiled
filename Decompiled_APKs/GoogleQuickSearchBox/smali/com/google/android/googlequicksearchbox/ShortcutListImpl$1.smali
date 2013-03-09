.class Lcom/google/android/googlequicksearchbox/ShortcutListImpl$1;
.super Ljava/lang/Object;
.source "ShortcutListImpl.java"

# interfaces
.implements Lcom/google/android/googlequicksearchbox/ShortcutRefresher$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/googlequicksearchbox/ShortcutListImpl;->refresh(Lcom/google/android/googlequicksearchbox/Suggestion;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/googlequicksearchbox/ShortcutListImpl;


# direct methods
.method constructor <init>(Lcom/google/android/googlequicksearchbox/ShortcutListImpl;)V
    .locals 0
    .parameter

    .prologue
    .line 63
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/ShortcutListImpl$1;->this$0:Lcom/google/android/googlequicksearchbox/ShortcutListImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShortcutRefreshed(Lcom/google/android/googlequicksearchbox/Source;Ljava/lang/String;Lcom/google/android/googlequicksearchbox/Suggestion;)V
    .locals 2
    .parameter "source"
    .parameter "shortcutId"
    .parameter "refreshed"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ShortcutListImpl$1;->this$0:Lcom/google/android/googlequicksearchbox/ShortcutListImpl;

    #getter for: Lcom/google/android/googlequicksearchbox/ShortcutListImpl;->mShortcutRepo:Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepository;
    invoke-static {v0}, Lcom/google/android/googlequicksearchbox/ShortcutListImpl;->access$000(Lcom/google/android/googlequicksearchbox/ShortcutListImpl;)Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepository;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepository;->updateShortcut(Lcom/google/android/googlequicksearchbox/Source;Ljava/lang/String;Lcom/google/android/googlequicksearchbox/Suggestion;)V

    .line 68
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ShortcutListImpl$1;->this$0:Lcom/google/android/googlequicksearchbox/ShortcutListImpl;

    #getter for: Lcom/google/android/googlequicksearchbox/ShortcutListImpl;->mUiThread:Landroid/os/Handler;
    invoke-static {v0}, Lcom/google/android/googlequicksearchbox/ShortcutListImpl;->access$200(Lcom/google/android/googlequicksearchbox/ShortcutListImpl;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/google/android/googlequicksearchbox/ShortcutListImpl$1$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/google/android/googlequicksearchbox/ShortcutListImpl$1$1;-><init>(Lcom/google/android/googlequicksearchbox/ShortcutListImpl$1;Lcom/google/android/googlequicksearchbox/Source;Ljava/lang/String;Lcom/google/android/googlequicksearchbox/Suggestion;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 73
    return-void
.end method
