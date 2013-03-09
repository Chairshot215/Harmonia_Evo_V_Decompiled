.class Lcom/htc/android/epst/ListItemsActivity$7;
.super Ljava/lang/Object;
.source "ListItemsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/epst/ListItemsActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/epst/ListItemsActivity;


# direct methods
.method constructor <init>(Lcom/htc/android/epst/ListItemsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1189
    iput-object p1, p0, Lcom/htc/android/epst/ListItemsActivity$7;->this$0:Lcom/htc/android/epst/ListItemsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 1191
    invoke-static {}, Lcom/htc/android/epst/Port;->getSingleton()Lcom/htc/android/epst/Port;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/android/epst/Port;->PortRebootDevice()V

    .line 1192
    iget-object v0, p0, Lcom/htc/android/epst/ListItemsActivity$7;->this$0:Lcom/htc/android/epst/ListItemsActivity;

    invoke-virtual {v0}, Lcom/htc/android/epst/ListItemsActivity;->finish()V

    .line 1193
    return-void
.end method
