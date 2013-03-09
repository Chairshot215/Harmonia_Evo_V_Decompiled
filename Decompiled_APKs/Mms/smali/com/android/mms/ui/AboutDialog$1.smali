.class Lcom/android/mms/ui/AboutDialog$1;
.super Ljava/lang/Object;
.source "AboutDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/AboutDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/AboutDialog;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/AboutDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 53
    iput-object p1, p0, Lcom/android/mms/ui/AboutDialog$1;->this$0:Lcom/android/mms/ui/AboutDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/mms/ui/AboutDialog$1;->this$0:Lcom/android/mms/ui/AboutDialog;

    invoke-virtual {v0}, Lcom/android/mms/ui/AboutDialog;->finish()V

    .line 56
    return-void
.end method
