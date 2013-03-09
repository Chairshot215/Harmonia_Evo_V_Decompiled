.class Lcom/android/mms/ui/NewBlockNumberActivity$5;
.super Ljava/lang/Object;
.source "NewBlockNumberActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/NewBlockNumberActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/NewBlockNumberActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/NewBlockNumberActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 158
    iput-object p1, p0, Lcom/android/mms/ui/NewBlockNumberActivity$5;->this$0:Lcom/android/mms/ui/NewBlockNumberActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 160
    iget-object v0, p0, Lcom/android/mms/ui/NewBlockNumberActivity$5;->this$0:Lcom/android/mms/ui/NewBlockNumberActivity;

    invoke-virtual {v0}, Lcom/android/mms/ui/NewBlockNumberActivity;->finish()V

    .line 161
    return-void
.end method
