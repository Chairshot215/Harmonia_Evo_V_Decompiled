.class Lcom/android/mms/ui/RestoreActivity$4;
.super Ljava/lang/Object;
.source "RestoreActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/RestoreActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/RestoreActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/RestoreActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 186
    iput-object p1, p0, Lcom/android/mms/ui/RestoreActivity$4;->this$0:Lcom/android/mms/ui/RestoreActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 188
    iget-object v0, p0, Lcom/android/mms/ui/RestoreActivity$4;->this$0:Lcom/android/mms/ui/RestoreActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/RestoreActivity;->confirmBackupFiles(Z)V

    .line 189
    return-void
.end method
