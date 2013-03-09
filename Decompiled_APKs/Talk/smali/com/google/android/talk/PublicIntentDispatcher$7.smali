.class Lcom/google/android/talk/PublicIntentDispatcher$7;
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


# direct methods
.method constructor <init>(Lcom/google/android/talk/PublicIntentDispatcher;)V
    .locals 0
    .parameter

    .prologue
    .line 460
    iput-object p1, p0, Lcom/google/android/talk/PublicIntentDispatcher$7;->this$0:Lcom/google/android/talk/PublicIntentDispatcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 462
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 463
    return-void
.end method
