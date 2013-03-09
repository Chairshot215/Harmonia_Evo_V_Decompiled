.class Lcom/android/mms/ui/RestoreActivity$6;
.super Ljava/lang/Object;
.source "RestoreActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    .line 241
    iput-object p1, p0, Lcom/android/mms/ui/RestoreActivity$6;->this$0:Lcom/android/mms/ui/RestoreActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 243
    new-instance v0, Lcom/android/mms/ui/RestoreActivity$6$1;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/RestoreActivity$6$1;-><init>(Lcom/android/mms/ui/RestoreActivity$6;)V

    invoke-static {v0}, Lcom/android/mms/ui/RestoreActivity;->access$402(Ljava/lang/Thread;)Ljava/lang/Thread;

    .line 263
    invoke-static {}, Lcom/android/mms/ui/RestoreActivity;->access$400()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 264
    return-void
.end method
