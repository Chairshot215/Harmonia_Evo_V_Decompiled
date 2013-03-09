.class Lcom/google/android/gm/GmailActionBar$1;
.super Ljava/lang/Object;
.source "GmailActionBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gm/GmailActionBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/gm/GmailActionBar;


# direct methods
.method constructor <init>(Lcom/google/android/gm/GmailActionBar;)V
    .locals 0
    .parameter

    .prologue
    .line 45
    iput-object p1, p0, Lcom/google/android/gm/GmailActionBar$1;->this$0:Lcom/google/android/gm/GmailActionBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/google/android/gm/GmailActionBar$1;->this$0:Lcom/google/android/gm/GmailActionBar;

    #getter for: Lcom/google/android/gm/GmailActionBar;->mSearchWidget:Landroid/widget/SearchView;
    invoke-static {v0}, Lcom/google/android/gm/GmailActionBar;->access$000(Lcom/google/android/gm/GmailActionBar;)Landroid/widget/SearchView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/google/android/gm/GmailActionBar$1;->this$0:Lcom/google/android/gm/GmailActionBar;

    #getter for: Lcom/google/android/gm/GmailActionBar;->mSearchWidget:Landroid/widget/SearchView;
    invoke-static {v0}, Lcom/google/android/gm/GmailActionBar;->access$000(Lcom/google/android/gm/GmailActionBar;)Landroid/widget/SearchView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/SearchView;->clearFocus()V

    .line 51
    :cond_0
    return-void
.end method
