.class Lcom/android/htccontacts/ImportVCardActivity2$2;
.super Ljava/lang/Object;
.source "ImportVCardActivity2.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/htccontacts/ImportVCardActivity2;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htccontacts/ImportVCardActivity2;


# direct methods
.method constructor <init>(Lcom/android/htccontacts/ImportVCardActivity2;)V
    .locals 0
    .parameter

    .prologue
    .line 266
    iput-object p1, p0, Lcom/android/htccontacts/ImportVCardActivity2$2;->this$0:Lcom/android/htccontacts/ImportVCardActivity2;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 268
    iget-object v0, p0, Lcom/android/htccontacts/ImportVCardActivity2$2;->this$0:Lcom/android/htccontacts/ImportVCardActivity2;

    #calls: Lcom/android/htccontacts/ImportVCardActivity2;->doSave()V
    invoke-static {v0}, Lcom/android/htccontacts/ImportVCardActivity2;->access$600(Lcom/android/htccontacts/ImportVCardActivity2;)V

    .line 269
    return-void
.end method
