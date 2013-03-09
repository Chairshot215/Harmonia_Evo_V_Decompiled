.class Lcom/htc/android/epst/ListItemsActivity$28;
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


# direct methods
.method constructor <init>(Lcom/htc/android/epst/ListItemsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1989
    iput-object p1, p0, Lcom/htc/android/epst/ListItemsActivity$28;->this$0:Lcom/htc/android/epst/ListItemsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 1992
    iget-object v0, p0, Lcom/htc/android/epst/ListItemsActivity$28;->this$0:Lcom/htc/android/epst/ListItemsActivity;

    invoke-virtual {v0}, Lcom/htc/android/epst/ListItemsActivity;->finishEditItem()V

    .line 1993
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1994
    return-void
.end method
