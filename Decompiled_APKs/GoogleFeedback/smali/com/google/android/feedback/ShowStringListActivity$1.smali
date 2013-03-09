.class Lcom/google/android/feedback/ShowStringListActivity$1;
.super Ljava/lang/Object;
.source "ShowStringListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/feedback/ShowStringListActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/feedback/ShowStringListActivity;


# direct methods
.method constructor <init>(Lcom/google/android/feedback/ShowStringListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 44
    iput-object p1, p0, Lcom/google/android/feedback/ShowStringListActivity$1;->this$0:Lcom/google/android/feedback/ShowStringListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/google/android/feedback/ShowStringListActivity$1;->this$0:Lcom/google/android/feedback/ShowStringListActivity;

    invoke-virtual {v0}, Lcom/google/android/feedback/ShowStringListActivity;->finish()V

    .line 48
    return-void
.end method
