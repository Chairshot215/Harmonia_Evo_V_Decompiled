.class Lcom/google/android/talk/fragments/SetStatusFragment$6;
.super Ljava/lang/Object;
.source "SetStatusFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/talk/fragments/SetStatusFragment;->makeCustomStatusItems(Landroid/content/Context;)Landroid/widget/ArrayAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/talk/fragments/SetStatusFragment;


# direct methods
.method constructor <init>(Lcom/google/android/talk/fragments/SetStatusFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 802
    iput-object p1, p0, Lcom/google/android/talk/fragments/SetStatusFragment$6;->this$0:Lcom/google/android/talk/fragments/SetStatusFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 805
    iget-object v0, p0, Lcom/google/android/talk/fragments/SetStatusFragment$6;->this$0:Lcom/google/android/talk/fragments/SetStatusFragment;

    #calls: Lcom/google/android/talk/fragments/SetStatusFragment;->clearStatusLists()V
    invoke-static {v0}, Lcom/google/android/talk/fragments/SetStatusFragment;->access$1400(Lcom/google/android/talk/fragments/SetStatusFragment;)V

    .line 806
    return-void
.end method
