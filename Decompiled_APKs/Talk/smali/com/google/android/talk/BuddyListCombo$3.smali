.class Lcom/google/android/talk/BuddyListCombo$3;
.super Ljava/lang/Object;
.source "BuddyListCombo.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/talk/BuddyListCombo;->setupExpando()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/talk/BuddyListCombo;


# direct methods
.method constructor <init>(Lcom/google/android/talk/BuddyListCombo;)V
    .locals 0
    .parameter

    .prologue
    .line 531
    iput-object p1, p0, Lcom/google/android/talk/BuddyListCombo$3;->this$0:Lcom/google/android/talk/BuddyListCombo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 534
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo$3;->this$0:Lcom/google/android/talk/BuddyListCombo;

    #getter for: Lcom/google/android/talk/BuddyListCombo;->mExpando:Lcom/google/android/talk/DrawerLayout;
    invoke-static {v0}, Lcom/google/android/talk/BuddyListCombo;->access$000(Lcom/google/android/talk/BuddyListCombo;)Lcom/google/android/talk/DrawerLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/talk/DrawerLayout;->setExpanded(Z)V

    .line 535
    return-void
.end method
