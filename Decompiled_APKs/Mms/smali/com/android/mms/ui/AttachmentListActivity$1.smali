.class Lcom/android/mms/ui/AttachmentListActivity$1;
.super Ljava/lang/Object;
.source "AttachmentListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/AttachmentListActivity;->initButton()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/AttachmentListActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/AttachmentListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 145
    iput-object p1, p0, Lcom/android/mms/ui/AttachmentListActivity$1;->this$0:Lcom/android/mms/ui/AttachmentListActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 147
    iget-object v0, p0, Lcom/android/mms/ui/AttachmentListActivity$1;->this$0:Lcom/android/mms/ui/AttachmentListActivity;

    invoke-virtual {v0}, Lcom/android/mms/ui/AttachmentListActivity;->finish()V

    .line 148
    return-void
.end method
