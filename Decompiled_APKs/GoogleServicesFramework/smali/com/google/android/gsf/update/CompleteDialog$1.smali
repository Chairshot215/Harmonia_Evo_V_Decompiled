.class Lcom/google/android/gsf/update/CompleteDialog$1;
.super Ljava/lang/Object;
.source "CompleteDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gsf/update/CompleteDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/gsf/update/CompleteDialog;


# direct methods
.method constructor <init>(Lcom/google/android/gsf/update/CompleteDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 60
    iput-object p1, p0, Lcom/google/android/gsf/update/CompleteDialog$1;->this$0:Lcom/google/android/gsf/update/CompleteDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/google/android/gsf/update/CompleteDialog$1;->this$0:Lcom/google/android/gsf/update/CompleteDialog;

    invoke-virtual {v0}, Lcom/google/android/gsf/update/CompleteDialog;->finish()V

    .line 63
    return-void
.end method
