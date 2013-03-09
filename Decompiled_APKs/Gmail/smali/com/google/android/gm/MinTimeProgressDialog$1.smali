.class Lcom/google/android/gm/MinTimeProgressDialog$1;
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
    .line 32
    iput-object p1, p0, Lcom/google/android/gm/MinTimeProgressDialog$1;->this$0:Lcom/google/android/gm/MinTimeProgressDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/google/android/gm/MinTimeProgressDialog$1;->this$0:Lcom/google/android/gm/MinTimeProgressDialog;

    #calls: Landroid/app/Dialog;->dismiss()V
    invoke-static {v0}, Lcom/google/android/gm/MinTimeProgressDialog;->access$001(Lcom/google/android/gm/MinTimeProgressDialog;)V

    .line 35
    return-void
.end method
