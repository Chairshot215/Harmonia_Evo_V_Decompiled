.class Lcom/android/mms/ui/ComposeMessageActivity$SeparatingProgressDialog$1;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessageActivity$SeparatingProgressDialog;->onBackPressed()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/mms/ui/ComposeMessageActivity$SeparatingProgressDialog;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageActivity$SeparatingProgressDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 10451
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$SeparatingProgressDialog$1;->this$1:Lcom/android/mms/ui/ComposeMessageActivity$SeparatingProgressDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 10453
    const-string v0, "ComposeMessageActivity"

    const-string v1, "CancelSeparating...."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10454
    invoke-static {}, Lcom/android/mms/ui/ComposeMessageActivity;->cancelSeparating()V

    .line 10455
    const-string v0, "ComposeMessageActivity"

    const-string v1, "CancelSeparating done...."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10456
    return-void
.end method
