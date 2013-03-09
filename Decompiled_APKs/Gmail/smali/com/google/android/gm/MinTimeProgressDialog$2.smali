.class Lcom/google/android/gm/MinTimeProgressDialog$2;
.super Ljava/lang/Object;
.source "MinTimeProgressDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gm/MinTimeProgressDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/gm/MinTimeProgressDialog;


# direct methods
.method constructor <init>(Lcom/google/android/gm/MinTimeProgressDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 38
    iput-object p1, p0, Lcom/google/android/gm/MinTimeProgressDialog$2;->this$0:Lcom/google/android/gm/MinTimeProgressDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/google/android/gm/MinTimeProgressDialog$2;->this$0:Lcom/google/android/gm/MinTimeProgressDialog;

    #getter for: Lcom/google/android/gm/MinTimeProgressDialog;->mDismissed:Z
    invoke-static {v0}, Lcom/google/android/gm/MinTimeProgressDialog;->access$100(Lcom/google/android/gm/MinTimeProgressDialog;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 41
    iget-object v0, p0, Lcom/google/android/gm/MinTimeProgressDialog$2;->this$0:Lcom/google/android/gm/MinTimeProgressDialog;

    #calls: Landroid/app/Dialog;->show()V
    invoke-static {v0}, Lcom/google/android/gm/MinTimeProgressDialog;->access$201(Lcom/google/android/gm/MinTimeProgressDialog;)V

    .line 43
    :cond_0
    return-void
.end method
