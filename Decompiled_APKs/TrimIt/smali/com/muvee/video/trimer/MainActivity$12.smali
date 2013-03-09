.class Lcom/muvee/video/trimer/MainActivity$12;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/muvee/video/trimer/MainActivity;->showAlertDialog(Ljava/lang/String;Ljava/lang/String;)Lcom/htc/widget/HtcAlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/muvee/video/trimer/MainActivity;


# direct methods
.method constructor <init>(Lcom/muvee/video/trimer/MainActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/muvee/video/trimer/MainActivity$12;->this$0:Lcom/muvee/video/trimer/MainActivity;

    .line 352
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "id"

    .prologue
    .line 354
    iget-object v0, p0, Lcom/muvee/video/trimer/MainActivity$12;->this$0:Lcom/muvee/video/trimer/MainActivity;

    invoke-virtual {v0}, Lcom/muvee/video/trimer/MainActivity;->finish()V

    .line 355
    return-void
.end method
