.class Lcom/android/mms/ui/BlockListActivity$1;
.super Ljava/lang/Object;
.source "BlockListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/BlockListActivity;->createHeaderView()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/BlockListActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/BlockListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 150
    iput-object p1, p0, Lcom/android/mms/ui/BlockListActivity$1;->this$0:Lcom/android/mms/ui/BlockListActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 152
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/mms/ui/BlockListActivity$1;->this$0:Lcom/android/mms/ui/BlockListActivity;

    const-class v2, Lcom/android/mms/ui/NewBlockNumberActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 154
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/mms/ui/BlockListActivity$1;->this$0:Lcom/android/mms/ui/BlockListActivity;

    const/4 v2, 0x2

    invoke-virtual {v1, v0, v2}, Lcom/android/mms/ui/BlockListActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 155
    return-void
.end method
