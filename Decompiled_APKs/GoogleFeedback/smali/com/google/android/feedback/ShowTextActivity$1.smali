.class Lcom/google/android/feedback/ShowTextActivity$1;
.super Ljava/lang/Object;
.source "ShowTextActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/feedback/ShowTextActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/feedback/ShowTextActivity;


# direct methods
.method constructor <init>(Lcom/google/android/feedback/ShowTextActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 41
    iput-object p1, p0, Lcom/google/android/feedback/ShowTextActivity$1;->this$0:Lcom/google/android/feedback/ShowTextActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/google/android/feedback/ShowTextActivity$1;->this$0:Lcom/google/android/feedback/ShowTextActivity;

    invoke-virtual {v0}, Lcom/google/android/feedback/ShowTextActivity;->finish()V

    .line 45
    return-void
.end method
