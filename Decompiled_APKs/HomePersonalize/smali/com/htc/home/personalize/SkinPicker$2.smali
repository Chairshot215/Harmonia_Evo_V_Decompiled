.class Lcom/htc/home/personalize/SkinPicker$2;
.super Ljava/lang/Object;
.source "SkinPicker.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/home/personalize/SkinPicker;->alertNoEnoughStorage()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/home/personalize/SkinPicker;


# direct methods
.method constructor <init>(Lcom/htc/home/personalize/SkinPicker;)V
    .locals 0
    .parameter

    .prologue
    .line 530
    iput-object p1, p0, Lcom/htc/home/personalize/SkinPicker$2;->this$0:Lcom/htc/home/personalize/SkinPicker;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 533
    iget-object v0, p0, Lcom/htc/home/personalize/SkinPicker$2;->this$0:Lcom/htc/home/personalize/SkinPicker;

    #getter for: Lcom/htc/home/personalize/SkinPicker;->progressDialog:Landroid/app/Dialog;
    invoke-static {v0}, Lcom/htc/home/personalize/SkinPicker;->access$500(Lcom/htc/home/personalize/SkinPicker;)Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 534
    iget-object v0, p0, Lcom/htc/home/personalize/SkinPicker$2;->this$0:Lcom/htc/home/personalize/SkinPicker;

    #getter for: Lcom/htc/home/personalize/SkinPicker;->progressDialog:Landroid/app/Dialog;
    invoke-static {v0}, Lcom/htc/home/personalize/SkinPicker;->access$500(Lcom/htc/home/personalize/SkinPicker;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 536
    :cond_0
    return-void
.end method
