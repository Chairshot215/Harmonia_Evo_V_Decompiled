.class Lcom/android/mms/ui/ActionListActivity$1;
.super Ljava/lang/Object;
.source "ActionListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ActionListActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ActionListActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ActionListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 243
    iput-object p1, p0, Lcom/android/mms/ui/ActionListActivity$1;->this$0:Lcom/android/mms/ui/ActionListActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 247
    iget-object v0, p0, Lcom/android/mms/ui/ActionListActivity$1;->this$0:Lcom/android/mms/ui/ActionListActivity;

    #calls: Lcom/android/mms/ui/ActionListActivity;->setContactInfo()V
    invoke-static {v0}, Lcom/android/mms/ui/ActionListActivity;->access$000(Lcom/android/mms/ui/ActionListActivity;)V

    .line 249
    iget-object v0, p0, Lcom/android/mms/ui/ActionListActivity$1;->this$0:Lcom/android/mms/ui/ActionListActivity;

    new-instance v1, Lcom/android/mms/ui/ActionListActivity$1$1;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/ActionListActivity$1$1;-><init>(Lcom/android/mms/ui/ActionListActivity$1;)V

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/ActionListActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 258
    return-void
.end method
