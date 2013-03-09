.class Lcom/android/camera/widget/SettingsView$1;
.super Ljava/lang/Object;
.source "SettingsView.java"

# interfaces
.implements Lcom/android/camera/IEventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/widget/SettingsView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/widget/SettingsView;


# direct methods
.method constructor <init>(Lcom/android/camera/widget/SettingsView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/widget/SettingsView$1;->this$0:Lcom/android/camera/widget/SettingsView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEvent(Lcom/android/camera/Event;)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/widget/SettingsView$1;->this$0:Lcom/android/camera/widget/SettingsView;

    #getter for: Lcom/android/camera/widget/SettingsView;->mMainAdapter_exp:Lcom/android/camera/widget/SettingsView$MainMenuExpAdapter;
    invoke-static {v0}, Lcom/android/camera/widget/SettingsView;->access$000(Lcom/android/camera/widget/SettingsView;)Lcom/android/camera/widget/SettingsView$MainMenuExpAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/widget/SettingsView$1;->this$0:Lcom/android/camera/widget/SettingsView;

    #getter for: Lcom/android/camera/widget/SettingsView;->mMainAdapter_exp:Lcom/android/camera/widget/SettingsView$MainMenuExpAdapter;
    invoke-static {v0}, Lcom/android/camera/widget/SettingsView;->access$000(Lcom/android/camera/widget/SettingsView;)Lcom/android/camera/widget/SettingsView$MainMenuExpAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/widget/SettingsView$MainMenuExpAdapter;->collapseAll()V

    :cond_0
    return-void
.end method
