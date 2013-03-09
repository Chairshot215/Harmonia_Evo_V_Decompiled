.class Lcom/m0narx/tweaks/rosie$1;
.super Ljava/lang/Object;
.source "rosie.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/m0narx/tweaks/rosie;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/m0narx/tweaks/rosie;

.field private final synthetic val$fNumberPickerView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/m0narx/tweaks/rosie;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/m0narx/tweaks/rosie$1;->this$0:Lcom/m0narx/tweaks/rosie;

    iput-object p2, p0, Lcom/m0narx/tweaks/rosie$1;->val$fNumberPickerView:Landroid/view/View;

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    const/4 v3, 0x1

    .line 65
    iget-object v0, p0, Lcom/m0narx/tweaks/rosie$1;->this$0:Lcom/m0narx/tweaks/rosie;

    #getter for: Lcom/m0narx/tweaks/rosie;->Cr:Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/m0narx/tweaks/rosie;->access$0(Lcom/m0narx/tweaks/rosie;)Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "tweaks_rosie_app_drawer_columns"

    iget-object v0, p0, Lcom/m0narx/tweaks/rosie$1;->val$fNumberPickerView:Landroid/view/View;

    check-cast v0, Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v0}, Lcom/htc/widget/HtcNumberPicker;->getCenterView()I

    move-result v0

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 66
    sput-boolean v3, Lcom/m0narx/tweaks/main;->is_need_sense_restart:Z

    .line 67
    sput-boolean v3, Lcom/m0narx/tweaks/main;->is_need_on_change_dialog:Z

    .line 68
    iget-object v0, p0, Lcom/m0narx/tweaks/rosie$1;->this$0:Lcom/m0narx/tweaks/rosie;

    #calls: Lcom/m0narx/tweaks/rosie;->CheckButtonState()V
    invoke-static {v0}, Lcom/m0narx/tweaks/rosie;->access$1(Lcom/m0narx/tweaks/rosie;)V

    .line 69
    return-void
.end method
