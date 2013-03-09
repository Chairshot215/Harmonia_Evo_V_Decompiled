.class Lcom/android/settings/wifi/WpsDialog$5;
.super Ljava/lang/Object;
.source "WpsDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/WpsDialog;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WpsDialog;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WpsDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 246
    iput-object p1, p0, Lcom/android/settings/wifi/WpsDialog$5;->this$0:Lcom/android/settings/wifi/WpsDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 248
    iget-object v0, p0, Lcom/android/settings/wifi/WpsDialog$5;->this$0:Lcom/android/settings/wifi/WpsDialog;

    #calls: Lcom/android/settings/wifi/WpsDialog;->clearThread()V
    invoke-static {v0}, Lcom/android/settings/wifi/WpsDialog;->access$000(Lcom/android/settings/wifi/WpsDialog;)V

    .line 249
    iget-object v0, p0, Lcom/android/settings/wifi/WpsDialog$5;->this$0:Lcom/android/settings/wifi/WpsDialog;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WpsDialog;->finish()V

    .line 251
    return-void
.end method
