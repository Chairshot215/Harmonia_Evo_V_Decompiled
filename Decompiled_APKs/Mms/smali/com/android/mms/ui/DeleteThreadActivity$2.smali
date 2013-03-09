.class Lcom/android/mms/ui/DeleteThreadActivity$2;
.super Ljava/lang/Object;
.source "DeleteThreadActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/DeleteThreadActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/DeleteThreadActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/DeleteThreadActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 128
    iput-object p1, p0, Lcom/android/mms/ui/DeleteThreadActivity$2;->this$0:Lcom/android/mms/ui/DeleteThreadActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 130
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 131
    .local v0, result:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/mms/ui/DeleteThreadActivity$2;->this$0:Lcom/android/mms/ui/DeleteThreadActivity;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Lcom/android/mms/ui/DeleteThreadActivity;->setResult(ILandroid/content/Intent;)V

    .line 133
    return-void
.end method
