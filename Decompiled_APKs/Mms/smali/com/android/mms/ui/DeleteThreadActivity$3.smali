.class Lcom/android/mms/ui/DeleteThreadActivity$3;
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
    .line 135
    iput-object p1, p0, Lcom/android/mms/ui/DeleteThreadActivity$3;->this$0:Lcom/android/mms/ui/DeleteThreadActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 138
    iget-object v0, p0, Lcom/android/mms/ui/DeleteThreadActivity$3;->this$0:Lcom/android/mms/ui/DeleteThreadActivity;

    iget-object v1, p0, Lcom/android/mms/ui/DeleteThreadActivity$3;->this$0:Lcom/android/mms/ui/DeleteThreadActivity;

    iget-object v1, v1, Lcom/android/mms/ui/DeleteThreadActivity;->mDeleteUri:Landroid/net/Uri;

    #calls: Lcom/android/mms/ui/DeleteThreadActivity;->deleteThread(Landroid/net/Uri;)V
    invoke-static {v0, v1}, Lcom/android/mms/ui/DeleteThreadActivity;->access$000(Lcom/android/mms/ui/DeleteThreadActivity;Landroid/net/Uri;)V

    .line 139
    return-void
.end method
