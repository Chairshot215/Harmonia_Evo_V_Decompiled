.class Lcom/google/android/talk/PublicIntentDispatcher$1;
.super Ljava/lang/Object;
.source "PublicIntentDispatcher.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/talk/PublicIntentDispatcher;
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
    .line 60
    iput-object p1, p0, Lcom/google/android/talk/PublicIntentDispatcher$1;->this$0:Lcom/google/android/talk/PublicIntentDispatcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/google/android/talk/PublicIntentDispatcher$1;->this$0:Lcom/google/android/talk/PublicIntentDispatcher;

    invoke-virtual {v0}, Lcom/google/android/talk/PublicIntentDispatcher;->finish()V

    .line 63
    return-void
.end method
