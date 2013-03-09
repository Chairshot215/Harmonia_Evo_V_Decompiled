.class Lcom/htc/android/epst/ListItemsActivity$31;
.super Ljava/lang/Object;
.source "ListItemsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


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
    .line 1997
    iput-object p1, p0, Lcom/htc/android/epst/ListItemsActivity$31;->this$0:Lcom/htc/android/epst/ListItemsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 2000
    iget-object v0, p0, Lcom/htc/android/epst/ListItemsActivity$31;->this$0:Lcom/htc/android/epst/ListItemsActivity;

    invoke-virtual {v0}, Lcom/htc/android/epst/ListItemsActivity;->finishEditItem()V

    .line 2001
    return-void
.end method
