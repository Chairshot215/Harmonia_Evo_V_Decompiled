.class Lcom/htc/android/epst/ListItemsActivity$30;
.super Ljava/lang/Object;
.source "ListItemsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/epst/ListItemsActivity;->makeEditingOptionDialog()Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/epst/ListItemsActivity;

.field final synthetic val$options:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/htc/android/epst/ListItemsActivity;Ljava/util/List;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1972
    iput-object p1, p0, Lcom/htc/android/epst/ListItemsActivity$30;->this$0:Lcom/htc/android/epst/ListItemsActivity;

    iput-object p2, p0, Lcom/htc/android/epst/ListItemsActivity$30;->val$options:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 1974
    iget-object v0, p0, Lcom/htc/android/epst/ListItemsActivity$30;->val$options:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/htc/android/epst/ListItemsActivity;->access$1802(Ljava/lang/String;)Ljava/lang/String;

    .line 1975
    return-void
.end method
