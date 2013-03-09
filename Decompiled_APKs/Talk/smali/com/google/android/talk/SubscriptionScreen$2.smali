.class Lcom/google/android/talk/SubscriptionScreen$2;
.super Ljava/lang/Object;
.source "SubscriptionScreen.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/talk/SubscriptionScreen;->makeDialog(Landroid/graphics/drawable/Drawable;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/talk/SubscriptionScreen;


# direct methods
.method constructor <init>(Lcom/google/android/talk/SubscriptionScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 97
    iput-object p1, p0, Lcom/google/android/talk/SubscriptionScreen$2;->this$0:Lcom/google/android/talk/SubscriptionScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/google/android/talk/SubscriptionScreen$2;->this$0:Lcom/google/android/talk/SubscriptionScreen;

    invoke-virtual {v0}, Lcom/google/android/talk/SubscriptionScreen;->finish()V

    .line 101
    return-void
.end method
