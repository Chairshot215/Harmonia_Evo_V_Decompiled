.class Lcom/android/htccontacts/CommonContactAttributePicker$5;
.super Ljava/lang/Object;
.source "CommonContactAttributePicker.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/htccontacts/CommonContactAttributePicker;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htccontacts/CommonContactAttributePicker;


# direct methods
.method constructor <init>(Lcom/android/htccontacts/CommonContactAttributePicker;)V
    .locals 0
    .parameter

    .prologue
    .line 1721
    iput-object p1, p0, Lcom/android/htccontacts/CommonContactAttributePicker$5;->this$0:Lcom/android/htccontacts/CommonContactAttributePicker;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 1723
    iget-object v0, p0, Lcom/android/htccontacts/CommonContactAttributePicker$5;->this$0:Lcom/android/htccontacts/CommonContactAttributePicker;

    #calls: Lcom/android/htccontacts/CommonContactAttributePicker;->collectDataThread()V
    invoke-static {v0}, Lcom/android/htccontacts/CommonContactAttributePicker;->access$2600(Lcom/android/htccontacts/CommonContactAttributePicker;)V

    .line 1724
    return-void
.end method
