.class Lcom/android/browser/Controller$8;
.super Ljava/lang/Object;
.source "Controller.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/Controller;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/Controller;

.field final synthetic val$extra:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/browser/Controller;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1399
    iput-object p1, p0, Lcom/android/browser/Controller$8;->this$0:Lcom/android/browser/Controller;

    iput-object p2, p0, Lcom/android/browser/Controller$8;->val$extra:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter "item"

    .prologue
    const/4 v3, 0x1

    .line 1402
    iget-object v0, p0, Lcom/android/browser/Controller$8;->this$0:Lcom/android/browser/Controller;

    iget-object v1, p0, Lcom/android/browser/Controller$8;->val$extra:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/browser/Controller$8;->this$0:Lcom/android/browser/Controller;

    #getter for: Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;
    invoke-static {v2}, Lcom/android/browser/Controller;->access$000(Lcom/android/browser/Controller;)Lcom/android/browser/TabControl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/browser/TabControl;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v3, v3}, Lcom/android/browser/Controller;->openTab(Ljava/lang/String;Lcom/android/browser/Tab;ZZ)Lcom/android/browser/Tab;

    .line 1403
    const/4 v0, 0x0

    return v0
.end method
