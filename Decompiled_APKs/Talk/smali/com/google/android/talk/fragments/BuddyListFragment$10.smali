.class Lcom/google/android/talk/fragments/BuddyListFragment$10;
.super Ljava/lang/Object;
.source "BuddyListFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/talk/fragments/BuddyListFragment;->logout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/talk/fragments/BuddyListFragment;


# direct methods
.method constructor <init>(Lcom/google/android/talk/fragments/BuddyListFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 1727
    iput-object p1, p0, Lcom/google/android/talk/fragments/BuddyListFragment$10;->this$0:Lcom/google/android/talk/fragments/BuddyListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1730
    iget-object v0, p0, Lcom/google/android/talk/fragments/BuddyListFragment$10;->this$0:Lcom/google/android/talk/fragments/BuddyListFragment;

    iget-object v0, v0, Lcom/google/android/talk/fragments/BuddyListFragment;->mController:Lcom/google/android/talk/fragments/BuddyListFragment$Controller;

    invoke-interface {v0}, Lcom/google/android/talk/fragments/BuddyListFragment$Controller;->onLogout()V

    .line 1731
    return-void
.end method
