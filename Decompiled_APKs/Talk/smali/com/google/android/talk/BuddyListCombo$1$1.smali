.class Lcom/google/android/talk/BuddyListCombo$1$1;
.super Ljava/lang/Object;
.source "BuddyListCombo.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/talk/BuddyListCombo$1;->onMenuItemActionExpand(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/talk/BuddyListCombo$1;


# direct methods
.method constructor <init>(Lcom/google/android/talk/BuddyListCombo$1;)V
    .locals 0
    .parameter

    .prologue
    .line 400
    iput-object p1, p0, Lcom/google/android/talk/BuddyListCombo$1$1;->this$1:Lcom/google/android/talk/BuddyListCombo$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 403
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo$1$1;->this$1:Lcom/google/android/talk/BuddyListCombo$1;

    iget-object v0, v0, Lcom/google/android/talk/BuddyListCombo$1;->this$0:Lcom/google/android/talk/BuddyListCombo;

    invoke-virtual {v0}, Lcom/google/android/talk/BuddyListCombo;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 404
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo$1$1;->this$1:Lcom/google/android/talk/BuddyListCombo$1;

    iget-object v0, v0, Lcom/google/android/talk/BuddyListCombo$1;->this$0:Lcom/google/android/talk/BuddyListCombo;

    #getter for: Lcom/google/android/talk/BuddyListCombo;->mExpando:Lcom/google/android/talk/DrawerLayout;
    invoke-static {v0}, Lcom/google/android/talk/BuddyListCombo;->access$000(Lcom/google/android/talk/BuddyListCombo;)Lcom/google/android/talk/DrawerLayout;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/talk/DrawerLayout;->setExpanded(Z)V

    .line 406
    :cond_0
    return-void
.end method
