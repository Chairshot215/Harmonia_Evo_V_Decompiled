.class Lcom/google/android/talk/fragments/BuddyListFragment$ChatListener$1;
.super Ljava/lang/Object;
.source "BuddyListFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/talk/fragments/BuddyListFragment$ChatListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/talk/fragments/BuddyListFragment$ChatListener;


# direct methods
.method constructor <init>(Lcom/google/android/talk/fragments/BuddyListFragment$ChatListener;)V
    .locals 0
    .parameter

    .prologue
    .line 294
    iput-object p1, p0, Lcom/google/android/talk/fragments/BuddyListFragment$ChatListener$1;->this$0:Lcom/google/android/talk/fragments/BuddyListFragment$ChatListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 297
    iget-object v0, p0, Lcom/google/android/talk/fragments/BuddyListFragment$ChatListener$1;->this$0:Lcom/google/android/talk/fragments/BuddyListFragment$ChatListener;

    #getter for: Lcom/google/android/talk/fragments/BuddyListFragment$ChatListener;->mFragment:Lcom/google/android/talk/fragments/BuddyListFragment;
    invoke-static {v0}, Lcom/google/android/talk/fragments/BuddyListFragment$ChatListener;->access$400(Lcom/google/android/talk/fragments/BuddyListFragment$ChatListener;)Lcom/google/android/talk/fragments/BuddyListFragment;

    move-result-object v0

    if-nez v0, :cond_0

    .line 301
    :goto_0
    return-void

    .line 300
    :cond_0
    iget-object v0, p0, Lcom/google/android/talk/fragments/BuddyListFragment$ChatListener$1;->this$0:Lcom/google/android/talk/fragments/BuddyListFragment$ChatListener;

    #getter for: Lcom/google/android/talk/fragments/BuddyListFragment$ChatListener;->mFragment:Lcom/google/android/talk/fragments/BuddyListFragment;
    invoke-static {v0}, Lcom/google/android/talk/fragments/BuddyListFragment$ChatListener;->access$400(Lcom/google/android/talk/fragments/BuddyListFragment$ChatListener;)Lcom/google/android/talk/fragments/BuddyListFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/talk/fragments/BuddyListFragment;->forceLoad()V

    goto :goto_0
.end method
