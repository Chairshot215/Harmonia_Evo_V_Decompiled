.class Lcom/android/mms/ui/BackupActivity$5;
.super Ljava/lang/Object;
.source "BackupActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/BackupActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/BackupActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/BackupActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 225
    iput-object p1, p0, Lcom/android/mms/ui/BackupActivity$5;->this$0:Lcom/android/mms/ui/BackupActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 227
    iget-object v0, p0, Lcom/android/mms/ui/BackupActivity$5;->this$0:Lcom/android/mms/ui/BackupActivity;

    invoke-virtual {v0}, Lcom/android/mms/ui/BackupActivity;->finish()V

    .line 228
    return-void
.end method
