.class Lcom/android/mms/ui/DeleteThreadActivity$1;
.super Ljava/lang/Object;
.source "DeleteThreadActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


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
    .line 121
    iput-object p1, p0, Lcom/android/mms/ui/DeleteThreadActivity$1;->this$0:Lcom/android/mms/ui/DeleteThreadActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/mms/ui/DeleteThreadActivity$1;->this$0:Lcom/android/mms/ui/DeleteThreadActivity;

    invoke-virtual {v0}, Lcom/android/mms/ui/DeleteThreadActivity;->finish()V

    .line 124
    return-void
.end method
