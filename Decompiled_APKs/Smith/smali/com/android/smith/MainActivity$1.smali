.class Lcom/android/smith/MainActivity$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/smith/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/smith/MainActivity;


# direct methods
.method constructor <init>(Lcom/android/smith/MainActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 113
    iput-object p1, p0, Lcom/android/smith/MainActivity$1;->this$0:Lcom/android/smith/MainActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 116
    const-string v0, "SM:Main"

    const-string v1, "close app."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 118
    iget-object v0, p0, Lcom/android/smith/MainActivity$1;->this$0:Lcom/android/smith/MainActivity;

    invoke-virtual {v0}, Lcom/android/smith/MainActivity;->finish()V

    .line 119
    return-void
.end method
