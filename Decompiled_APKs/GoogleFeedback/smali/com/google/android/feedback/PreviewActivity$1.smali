.class Lcom/google/android/feedback/PreviewActivity$1;
.super Ljava/lang/Object;
.source "PreviewActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/feedback/PreviewActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/feedback/PreviewActivity;


# direct methods
.method constructor <init>(Lcom/google/android/feedback/PreviewActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 53
    iput-object p1, p0, Lcom/google/android/feedback/PreviewActivity$1;->this$0:Lcom/google/android/feedback/PreviewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/google/android/feedback/PreviewActivity$1;->this$0:Lcom/google/android/feedback/PreviewActivity;

    invoke-virtual {v0}, Lcom/google/android/feedback/PreviewActivity;->finish()V

    .line 57
    return-void
.end method
