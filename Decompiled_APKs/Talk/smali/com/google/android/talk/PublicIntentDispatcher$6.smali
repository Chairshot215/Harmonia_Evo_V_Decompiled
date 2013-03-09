.class Lcom/google/android/talk/PublicIntentDispatcher$6;
.super Ljava/lang/Object;
.source "PublicIntentDispatcher.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/talk/PublicIntentDispatcher;->makeConfirmationDialog(ILandroid/graphics/Bitmap;Landroid/graphics/Bitmap;Ljava/lang/Runnable;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/talk/PublicIntentDispatcher;

.field final synthetic val$confirmRunnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/google/android/talk/PublicIntentDispatcher;Ljava/lang/Runnable;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 453
    iput-object p1, p0, Lcom/google/android/talk/PublicIntentDispatcher$6;->this$0:Lcom/google/android/talk/PublicIntentDispatcher;

    iput-object p2, p0, Lcom/google/android/talk/PublicIntentDispatcher$6;->val$confirmRunnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 455
    iget-object v0, p0, Lcom/google/android/talk/PublicIntentDispatcher$6;->val$confirmRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 456
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 457
    return-void
.end method
